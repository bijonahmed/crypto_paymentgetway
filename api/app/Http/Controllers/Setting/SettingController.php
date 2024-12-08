<?php

namespace App\Http\Controllers\Setting;

use DB;
use Auth;
use Helper;
use Validator;
use App\Models\User;
use App\Models\ApiKey;
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

    public function settingrow()
    {

        $data = Setting::find(1);
        $response = [
            'data' => $data,
            'message' => 'success'
        ];
        return response()->json($response, 200);
    }


    public function getLanguageActiveList()
    {
        $response = Language::where('status', 1)->orderBy('id', 'desc')->Get();
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


    public function searchByConfigrationApiKey(Request $request)
    {
        // dd($request->all());
        $page = $request->input('page', 1);
        $pageSize = $request->input('pageSize', 10);

        // Get search query from the request
        $searchQuery    = $request->searchQuery;
        $selectedFilter = (int)$request->selectedFilter;
        $searchMerchant = (int)$request->searchMerchant;
        if ($searchMerchant === 0) {
            $searchMerchant = null; // or use '' (empty string) if you prefer
        }
        //dd($searchMerchant);
        $query = ApiKey::orderBy('api_key.id', 'desc');

        if ($searchQuery !== null) {
            $query->where('api_key.key', 'like', '%' . $searchQuery . '%');
        }

        if ($selectedFilter !== null) {
            $query->where('api_key.status', $selectedFilter);
        }

        if ($searchMerchant !== null) {
            $query->where('api_key.merchant_id', $searchMerchant);
        }

        // $query->whereNotIn('users.role_id', [2]);
        $paginator = $query->paginate($pageSize, ['*'], 'page', $page);

        $modifiedCollection = $paginator->getCollection()->map(function ($item) {
            $findMrchent    =  User::where('id', $item->merchant_id)->first();

            return [
                'id'            => $item->id,
                'company_name'  => $findMrchent->company_name ?? "",
                'name'          => $findMrchent->name ?? "",
                'key'           => $item->key ?? "",
                'password'      => $item->password ?? "",
                'created_at'    => date("Y-M-d", strtotime($item->created_at)),
                'updated_at'    => date("Y-M-d H:i:s", strtotime($item->updated_at)),
                'status'        => $item->status == 1 ? 'Open' : 'Close',
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




    public function saveAPIKey(Request $request)
    {

        if (empty($request->id)) {
            $validator = Validator::make($request->all(), [
                'merchant_id' => 'required|unique:api_key,merchant_id',
                'key'         => 'required',
                'password'    => 'required',
                'status'      => 'required',
            ], [
                'merchant_id.required' => 'The merchant is required.',
                'key.required'         => 'The API key is required.',
                'password.required'    => 'The password is required.',
                'status.required'      => 'The status field is required.',
            ]);
        } else {
            $validator = Validator::make($request->all(), [
                'merchant_id' => 'required',
                'status'      => 'required',
            ], [
                'merchant_id.required' => 'The merchant is required.',
                'status.required'      => 'The status field is required.',
            ]);
        }

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        if (empty($request->id)) {
            $data = array(
                'merchant_id'                => $request->merchant_id,
                'key'                        => $request->key ?? "",
                'password'                   => $request->password ?? "",
                'status'                     => $request->status,
            );
            $resdata['id']                   = ApiKey::insertGetId($data);
        } else {

            $data = array(
                'merchant_id'                => $request->merchant_id,
                'status'                     => $request->status,
            );
            $resdata['id']                    = ApiKey::where('id', $request->id)->update($data);
        }
        return response()->json($resdata);
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
}
