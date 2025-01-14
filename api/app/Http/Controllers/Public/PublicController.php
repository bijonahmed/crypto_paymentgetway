<?php

namespace App\Http\Controllers\Public;

use Cart;
use Carbon\Carbon;
use App\Models\GamesAll;
use App\Models\ApiKey;
use App\Models\BulkAddress;
use Illuminate\Http\Request;
use App\Models\GamelistTransate;
use App\Http\Controllers\Controller;

class PublicController extends Controller
{
    
    
   public function getwalleteAddress(Request $request)
    {
        
        // Validate incoming request
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
        $merchentId = 3;//!empty($chkData) ? $chkData->merchant_id : "";
        
        //echo $merchentId;
        //exit;       
                         
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