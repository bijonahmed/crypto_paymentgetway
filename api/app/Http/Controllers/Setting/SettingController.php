<?php

namespace App\Http\Controllers\Setting;

use DB;
use Auth;
use Helper;
use Validator;
use App\Models\User;
use App\Models\Profile;
use App\Models\Setting;
use App\Models\Sliders;
use App\Models\Language;
use App\Models\Translation;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Rules\MatchOldPassword;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;

class SettingController extends Controller
{
    protected $userid;
    public function __construct()
    {
        $this->middleware('auth:api');
        $id = auth('api')->user();
        if (!empty($id)) {
            $user = User::find($id->id);
            $this->userid = $user->id;
        }
    }
    

   
    public function getPayGroupList(Request $request)
    {
        try {
            $rows = Setting::filterPayGroupList($request->all());
            $response = [
                'data' => $rows,
                'message' => 'success'
            ];
        } catch (\Throwable $th) {
            $response = [
                'data' => [],
                'message' => 'failed'
            ];
        }
        return response()->json($response, 200);
    }
    public function getAnnualPayist(Request $request)
    {
        try {
            $rows = Setting::filterAnnualPay($request->all());
            $response = [
                'data' => $rows,
                'message' => 'success'
            ];
        } catch (\Throwable $th) {
            $response = [
                'data' => [],
                'message' => 'failed'
            ];
        }
        return response()->json($response, 200);
    }
    public function getBankMasterlist(Request $request)
    {
        try {
            $rows = Setting::filterbankMaster($request->all());
            $response = [
                'data' => $rows,
                'message' => 'success'
            ];
        } catch (\Throwable $th) {
            $response = [
                'data' => [],
                'message' => 'failed'
            ];
        }
        return response()->json($response, 200);
    }
    public function gettxtMastlist(Request $request)
    {
        try {
            $rows = Setting::filtertaxtMaster($request->all());
            $response = [
                'data' => $rows,
                'message' => 'success'
            ];
        } catch (\Throwable $th) {
            $response = [
                'data' => [],
                'message' => 'failed'
            ];
        }
        return response()->json($response, 200);
    }
    public function getWdges(Request $request)
    {
        try {
            $rows = Setting::filterWdges($request->all());
            $response = [
                'data' => $rows,
                'message' => 'success'
            ];
        } catch (\Throwable $th) {
            $response = [
                'data' => [],
                'message' => 'failed'
            ];
        }
        return response()->json($response, 200);
    }
    public function getPayItemList(Request $request)
    {
        try {
            $rows = Setting::filterPayItemlist($request->all());
            $response = [
                'data' => $rows,
                'message' => 'success'
            ];
        } catch (\Throwable $th) {
            $response = [
                'data' => [],
                'message' => 'failed'
            ];
        }
        return response()->json($response, 200);
    }
    
    public function checkrowWedges($id)
    {
        $id = (int) $id;
        $data = Setting::editWedgesId($id);
        $response = [
            'data' => $data,
            'message' => 'success'
        ];
        return response()->json($response, 200);
    }

    public function settingrow()
    {

        $data = Setting::find(1);
        $response = [
            'data' => $data,
            'message' => 'success'
        ];
        return response()->json($response, 200);
    }
    public function checkPayItemRow($id)
    {
        $id = (int) $id;
        $data = Setting::editPayrowId($id);
        $response = [
            'data' => $data,
            'message' => 'success'
        ];
        return response()->json($response, 200);
    }

    public function upateSetting(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name'        => 'required',
            'email'       => 'required',
            'currency'    => 'required',

            'register_bonus'    => 'required',
            'maximum_supply'    => 'required',
            'total_supply'      => 'required',

            'level_1_bonus'      => 'required',
            'level_2_bonus'      => 'required',
            'level_3_bonus'      => 'required',

            'liquidity_total_supply'      => 'required',
            'circlation'                  => 'required',
            'beganing_price'              => 'required',

        ]);
        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }
        $data = array(
            'name'              => !empty($request->name) ? $request->name : "",
            'email'             => !empty($request->email) ? $request->email : "",
            'address'           => !empty($request->address) ? $request->address : "",
            'whatsApp'          => !empty($request->whatsApp) ? $request->whatsApp : "",
            'description'       => !empty($request->description) ? $request->description : "",
            'copyright'         => !empty($request->copyright) ? $request->copyright : "",
            'currency'          => !empty($request->currency) ? $request->currency : "",
            'fblink'            => !empty($request->fblink) ? $request->fblink : "",
            'website'           => !empty($request->website) ? $request->website : "",
            'telegram'          => !empty($request->telegram) ? $request->telegram : "",

            'level_1_bonus'          => !empty($request->level_1_bonus) ? $request->level_1_bonus : "",
            'level_2_bonus'          => !empty($request->level_2_bonus) ? $request->level_2_bonus : "",
            'level_3_bonus'          => !empty($request->level_3_bonus) ? $request->level_3_bonus : "",

            'deposit_service_charge'      => !empty($request->deposit_service_charge) ? $request->deposit_service_charge : "",
            'withdraw_service_charge'     => !empty($request->withdraw_service_charge) ? $request->withdraw_service_charge : "",
            'crypto_wallet_address'       => !empty($request->crypto_wallet_address) ? $request->crypto_wallet_address : "",
            'store_policy'                => !empty($request->store_policy) ? $request->store_policy : "",
            'register_bonus'              => !empty($request->register_bonus) ? $request->register_bonus : 0,
            'maximum_supply'              => !empty($request->maximum_supply) ? $request->maximum_supply : 0,
            'total_supply'                => !empty($request->total_supply) ? $request->total_supply : 0,

            'mininmum_deposit_amount'               => !empty($request->mininmum_deposit_amount) ? $request->mininmum_deposit_amount : 0,
            'maximum_deposit_amount'                => !empty($request->maximum_deposit_amount) ? $request->maximum_deposit_amount : 0,
            'minimum_withdrawal'                    => !empty($request->minimum_withdrawal) ? $request->minimum_withdrawal : 0,
            'maximum_withdrawal'                    => !empty($request->maximum_withdrawal) ? $request->maximum_withdrawal : 0,
            'daily_max_withdraw_request'            => !empty($request->daily_max_withdraw_request) ? $request->daily_max_withdraw_request : 0,
            'withdrawal_free_amount'                => !empty($request->withdrawal_free_amount) ? $request->withdrawal_free_amount : 0,
            'withdrawal_free_on_percentage'         => !empty($request->withdrawal_free_on_percentage) ? $request->withdrawal_free_on_percentage : 0,
            'mimumun_transfer_amount_to_other_user' => !empty($request->mimumun_transfer_amount_to_other_user) ? $request->mimumun_transfer_amount_to_other_user : 0,
            'maximum_transfer_amount_to_other_user' => !empty($request->maximum_transfer_amount_to_other_user) ? $request->maximum_transfer_amount_to_other_user : 0,
            'transfer_fee_fixed_amount'             => !empty($request->transfer_fee_fixed_amount) ? $request->transfer_fee_fixed_amount : 0,
            'traansfer_fee_on_percentage'           => !empty($request->traansfer_fee_on_percentage) ? $request->traansfer_fee_on_percentage : 0,

            'liquidity_total_supply'                => !empty($request->liquidity_total_supply) ? $request->liquidity_total_supply : 0,
            //'circlation'                            => !empty($request->circlation) ? $request->circlation : 0,
            'beganing_price'                        => !empty($request->beganing_price) ? $request->beganing_price : 0,
        );

        //dd($data);
        DB::table('setting')->where('id', 1)->update($data);

        $response = [
            'message' => 'Successfull',
        ];
        return response()->json($response);
    }




    public function getLanguageActiveList()
    {

        $response = Language::where('status',1)->orderBy('id', 'desc')->Get();
        return response()->json($response);
    }



    public function getLanguageList(Request $request)
    {

        $page = $request->input('page', 1);
        $pageSize = $request->input('pageSize', 10);

        // Get search query from the request
        $searchQuery    = $request->searchQuery;
        $selectedFilter = (int)$request->selectedFilter;
        // dd($selectedFilter);
        $query = Language::orderBy('id', 'desc');

        if ($searchQuery !== null) {
            $query->where('name', 'like', '%' . $searchQuery . '%');
        }

        if ($selectedFilter !== null) {

            $query->where('status', $selectedFilter);
        }
        // $query->whereNotIn('users.role_id', [2]);
        $paginator = $query->paginate($pageSize, ['*'], 'page', $page);

        $modifiedCollection = $paginator->getCollection()->map(function ($item) {
            return [
                'id'            => $item->id,
                'name'          => $item->name,
                'code'          => $item->code,
                'created_at'    => date("Y-M-d H:i:s", strtotime($item->created_at)),
                'updated_at'    => date("Y-M-d H:i:s", strtotime($item->updated_at)),
                'status'        => $item->status,
            ];
        });
        // Return the modified collection along with pagination metadata
        return response()->json([
            'data' => $modifiedCollection,
            'current_page' => $paginator->currentPage(),
            'total_pages' => $paginator->lastPage(),
            'total_records' => $paginator->total(),
        ], 200);
    }

    public function chkLanguagerow($id)
    {
        $chkpoint = Language::where('id', $id)->first();
        return response()->json($chkpoint);
    }


    public function insertLanguageAdd(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name'                       => 'required',
            'code'                       => 'required|string|alpha',
            'status'                     => 'required',
        ]);
        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        if (empty($request->id)) {
            // Check if a category with the same name already exists
            $existing = Language::where('name', $request->input('name'))->first();
            if ($existing) {
                return response()->json(['errors_name' => 'Language with this name already exists'], 422);
            }
        }

        $data = array(
            'name'                       => $request->name,
            'code'                       => $request->code,
            'status'                     => $request->status,
        );


        if (empty($request->id)) {
            $resdata['id']                   = Language::insertGetId($data);
        } else {
            $resdata['id']                   = Language::where('id', $request->id)->update($data);
        }
        return response()->json($resdata);
    }

    public function getTranslationList(Request $request)
    {

        $code    = $request->code;
        $resdata = Translation::where('language_code', $code)->get();
        return response()->json($resdata);
    }

    public function updateTransationRow(Request $request)
    {
        $data['translated_value'] = !empty($request->translated_value) ? $request->translated_value : "";
        Translation::where('id', $request->id)->update($data);
        return response()->json($data, 200);
    }
}
