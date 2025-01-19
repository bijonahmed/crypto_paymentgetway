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
use Illuminate\Support\Facades\Http;
use App\Jobs\ProcessDepositRequest;
use App\Helpers\CustomLogger;

class ApiDepositRequest extends Controller
{

  
        public function checkdepositRequest(Request $request) {
            // Fetch deposits where test_status is 0
            $rows = Deposit::where('test_status', 0)->get();
            foreach ($rows as $deposit) {
                $cryptoWalletAddress = $deposit->to_crypto_wallet_address;
                $created_at          = $deposit->created_at;
                $id                  = $deposit->id;
                $depositID           = $deposit->depositID;
                $status              = $deposit->test_status;
                $merchant_id         = $deposit->merchant_id;
                
                $checkMerchant       = ApiKey::where('merchant_id',$deposit->merchant_id)->first();
                echo "Deposit ID {$depositID}, wallet address: {$cryptoWalletAddress}, Status: {$status}<br>";
                if(!empty($checkMerchant)){
                // Call the external API to update the status
                //$response = Http::post("https://other-domain.com/api/update-deposit-status', [
                $callbackUrl = rtrim($checkMerchant->callback_domain, '/') . '/api/public/callbackStatus';
                echo $callbackUrl;
               
               
                
               $postData = [
                  'depositID' => $depositID,
                  'status' => 1,
               ];

            // Initialize cURL session
            $ch = curl_init($callbackUrl);

            // Configure cURL options
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($ch, CURLOPT_POST, true);
            curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($postData)); // Use http_build_query for form data
            curl_setopt($ch, CURLOPT_HTTPHEADER, [
                'Content-Type: application/x-www-form-urlencoded', // Set appropriate content type
                'Accept: application/json', // Optional, if the external API requires JSON responses
            ]);

            // Execute the cURL request
            $response = curl_exec($ch);
                 
                Deposit::where('id', $id)->update(['status' => 1]);
               // BulkAddress::where('walletAddress', $to)->update(['block_status' => 0]);
        
                // Deposit::where('id', $id)->update(['status' => 1]);
                // BulkAddress::where('walletAddress', $to)->update(['block_status' => 0]);
                }
                //  return response()->json(['message' => 'Deposit processing.']);
               }
           }
}