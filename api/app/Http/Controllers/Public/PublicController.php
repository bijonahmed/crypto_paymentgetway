<?php

namespace App\Http\Controllers\Public;

use Cart;
use Carbon\Carbon;
use App\Models\Deposit;
use App\Models\ApiKey;
use App\Models\BulkAddress;
use Illuminate\Http\Request;
use App\Models\GamelistTransate;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Log;

class PublicController extends Controller
{
    
    
    public function depositRequest(Request $request)
{
        
    // Check if the incoming request is JSON
    if ($request->isJson()) {
           Log::info('Received DEPOSIT JSON request', ['request_data' => $request->all()]);
        $validatedData = $request->validate([
            'depositID'  => 'required',
            'user_id'    => 'required|integer',
            'username'   => 'required',
            'merchant_id'=> 'required|integer',
            'amount'     => 'required|numeric',
            'to_crypto_wallet_address' => 'required',
            'status'     => 'required|integer',
        ]);
        
        
         
        $depositId = $validatedData['depositID'];
        $checkDeposit = Deposit::where('depositID',$depositId)->first();
        
        if(empty($checkDeposit)){
            
        // Insert the data into the Deposit model
        $deposit = Deposit::create([
            'depositID'             => $validatedData['depositID'],
            'user_id'               => $validatedData['user_id'],
            'username'              => $validatedData['username'],
            'merchant_id'           => $validatedData['merchant_id'],
            'deposit_amount'        => $validatedData['amount'],
            'status'                => $validatedData['status'],
            'to_crypto_wallet_address' => $request->to_crypto_wallet_address,
        ]);
        // Log::info('Received DEPOSIT AFTER request', ['request_data' => $deposit]);
         
         
        
        $to_crypto_wallet_address = $validatedData['to_crypto_wallet_address'] ;
        $checkWalletAddreess      = BulkAddress::where('walletAddress',$to_crypto_wallet_address)->first();
        
        if ($checkWalletAddreess) {
            // Log::info('Address found, updating block_status', ['address' => $checkWalletAddreess->to_crypto_wallet_address]);
            // Update the block_status to 1
            $checkWalletAddreess->block_status = 1;
            $checkWalletAddreess->save(); // Save the changes to the database
        }

        // Respond with a success message
        return response()->json([
            'message' => 'Deposit received and inserted successfully',
            'deposit' => $deposit
        ], 200);
            
            
        }
        
       
    } else {
        // Log the error if it's not a JSON request
        Log::warning('Non-JSON request received.');
        // Respond with an error if the request is not JSON
        return response()->json(['message' => 'Request must be JSON'], 400);
    }
}
    
   public function getwalleteAddress(Request $request)
    {
      
        $request->validate([
            'api_key'  => 'required',
            'password' => 'required',
        ]);
    
        // Fetch API key and password from request
        $api_key  = $request->api_key;
        $password = $request->password;
    
        // Query database for matching record
        $chkData = ApiKey::where('key', $api_key)
                         ->where('password', $password)
                         ->first();
        $merchentId = !empty($chkData) ? $chkData->merchant_id : "";
          
                         
        $chkmerchant = BulkAddress::where('merchant_id', $merchentId)->where('block_status', 0)->inRandomOrder()->first(); // Get a single random row
       
      
       if ($chkmerchant) {
            $list = [
                'id'            => (int)$chkmerchant->id,
                'merchant_id'   => (int)$chkmerchant->merchant_id,
                'walletAddress' => $chkmerchant->walletAddress,
            ];
        } else {
            $list = []; // Return an empty array if no data is found
        }
               
    
        // Return response in JSON format
        if ($chkmerchant) {
            return response()->json([
                'status'  => 'success',
                'message' => 'Wallet address retrieved successfully.',
                'data'    => $chkmerchant,
            ], 200); // HTTP status code 200 (OK)
        }
    
        // Return error response if no data found
        return response()->json([
            'status'  => 'error',
            'message' => 'Invalid API key or password.',
        ], 404); // HTTP status code 404 (Not Found)
    }
    
    
    public function checkMerchentDetails(Request $request)
    {
        
        $request->validate([
            'api_key'  => 'required',
            'password' => 'required',
        ]);
    
        
        $api_key  = $request->api_key;
        $password = $request->password;
    
        // Query database for matching record
        $chkData = ApiKey::where('key', $api_key)
                         ->select('merchant_id')
                         ->where('password', $password)
                         ->first();
                         
          if ($chkData) {
            return response()->json([
                'status'  => 'success',
                'message' => 'Merchent information retrieved successfully.',
                'data'    => $chkData,
            ], 200); // HTTP status code 200 (OK)
        }
    
        return response()->json([
            'status'  => 'error',
            'message' => 'Invalid API key or password.',
        ], 404); // HTTP status code 404 (Not Found)
    }
    
    


    public function dynamicMenuLeftSidebar()
    {
        $menu = [
            [
                'label' => 'Dashboard',
                'path' => '/dashboard',
                'icon' => 'bx bx-home-alt',
                'submenu' => []
            ],
            [
                'label' => 'User',
                'path' => '#',
                'icon' => 'bx bx-category',
                'submenu' => [
                    ['label' => 'Role List', 'path' => '/user/role-list', 'icon' => 'bx bx-radio-circle'],
                    ['label' => 'Permission List', 'path' => '#', 'icon' => 'bx bx-radio-circle'],
                    ['label' => 'Assign List', 'path' => '#', 'icon' => 'bx bx-radio-circle'],
                    ['label' => 'Super Admin List', 'path' => '/user/superadmin-list', 'icon' => 'bx bx-radio-circle'],
                    ['label' => 'Admin List', 'path' => '/user/admin-list', 'icon' => 'bx bx-radio-circle'],
                    ['label' => 'Merchant List', 'path' => '/user/merchant-list', 'icon' => 'bx bx-radio-circle']
                ]
            ],
            [
                'label' => 'Post',
                'path' => '#',
                'icon' => 'bx bx-category',
                'submenu' => [
                    ['label' => 'Post Category', 'path' => '/category/post-category-list', 'icon' => 'bx bx-radio-circle'],
                    ['label' => 'Post List', 'path' => '/post/post-list', 'icon' => 'bx bx-radio-circle']
                ]
            ],
            [
                'label' => 'System',
                'path' => '#',
                'icon' => 'bx bx-category',
                'submenu' => [
                    ['label' => 'Global Category', 'path' => '/category/global-category-list', 'icon' => 'bx bx-radio-circle'],
                    ['label' => 'Global Wallet Address', 'path' => '/wallet/global-wallet-address-list', 'icon' => 'bx bx-radio-circle'],
                    ['label' => 'Confirgration API Key', 'path' => '/configration/config-api-key-list', 'icon' => 'bx bx-radio-circle'],
                    ['label' => 'Merchant Request', 'path' => '/configration/config-api-key-list', 'icon' => 'bx bx-radio-circle']
                ]
            ]
        ];

        return response()->json($menu);
    }
 
}