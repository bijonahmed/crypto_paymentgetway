<?php

namespace App\Http\Controllers\Wallet;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;
use Validator;
use Helper;
use App\Models\User;
use App\Models\Categorys;
use App\Category;
use App\Models\AttributeValues;
use App\Models\Attribute;
use App\Models\GlobalWalletAddress;
use App\Models\MiningCategory;
use App\Models\MiningHistory;
use App\Models\Mystore;
use App\Models\PostCategory;
use App\Models\SubAttribute;
use App\Models\ProductAttributes;
use App\Models\ProductAttributeValue;
use App\Models\Product;
use Illuminate\Support\Str;
use App\Rules\MatchOldPassword;
use Carbon\Carbon;
use Illuminate\Support\Facades\Hash;
use DB;

class WalletAddressController extends Controller
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

    public function save(Request $request)
    {
        //dd($request->all());
        $validator = Validator::make(
            $request->all(),
            [
                'name'      => 'required|unique:global_wallet_address,name',
                'status'    => 'required',
            ],
            [
                'name'   => 'Wallet address is required',
                'status' => 'Status is required',
            ]
        );
        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }
        $slug     = strtolower(trim(preg_replace('/[^A-Za-z0-9-]+/', '-', $request->input('name'))));
        $data = array(
            'name'                      => $request->name,
            'slug'                      => $slug,
            'status'                    => !empty($request->status) ? $request->status : "",
        );
        if (empty($request->id)) {
            GlobalWalletAddress::create($data);
        } else {
            GlobalWalletAddress::where('id', $request->id)->update($data);
        }

        $response = [
            'message' => 'Successfully insert',
        ];
        return response()->json($response);
    }

    public function checkWalletInfo(Request $request)
    {

        try {
            $walletiD = $request->walletId ?? "";
            $walletInfo = GlobalWalletAddress::where('id', $walletiD)->first();
            return response()->json($walletInfo);
        } catch (\Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }
 

    public function getPostCategorys(Request $request)
    {
        $categories = PostCategory::where('status', 1)->get();
        return response()->json($categories);
    }

    public function findCategoryRow($id)
    {
        $data = Categorys::find($id);
        $response = [
            'data'          => $data,
            'file'          => url($data->file),
            'bg_images'     => url($data->bg_images),
            'store_images'  => url($data->store_images),
            'message' => 'success'
        ];
        return response()->json($response, 200);
    }


    public function globalWalletAddressList(Request $request)
    {

        //dd($request->all());
        $page = $request->input('page', 1);
        $pageSize = $request->input('pageSize', 10);

        // Get search query from the request
        $searchQuery    = $request->searchQuery;
        $selectedFilter = (int)$request->selectedFilter;
        // dd($selectedFilter);
        $query = GlobalWalletAddress::orderBy('id', 'desc');

        if ($searchQuery !== null) {
            $query->where('global_wallet_address.name', 'like', '%' . $searchQuery . '%');
        }

        if ($selectedFilter !== null) {

            $query->where('global_wallet_address.status', $selectedFilter);
        }
        // $query->whereNotIn('users.role_id', [2]);
        $paginator = $query->paginate($pageSize, ['*'], 'page', $page);

        $modifiedCollection = $paginator->getCollection()->map(function ($item) {
            return [
                'id'            => $item->id,
                'name'          => $item->name,
                'created_at'    => date("Y-M-d H:i:s", strtotime($item->created_at)),
                'updated_at'    => date("Y-M-d H:i:s", strtotime($item->updated_at)),
                'status'        => $item->status == 1 ? 'Active' : 'Inactive',
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

    public function PostCategory(Request $request)
    {

        //dd($request->all());
        $page = $request->input('page', 1);
        $pageSize = $request->input('pageSize', 10);

        // Get search query from the request
        $searchQuery    = $request->searchQuery;
        $selectedFilter = (int)$request->selectedFilter;
        // dd($selectedFilter);
        $query = PostCategory::orderBy('id', 'desc');

        if ($searchQuery !== null) {
            $query->where('post_category.name', 'like', '%' . $searchQuery . '%');
        }

        if ($selectedFilter !== null) {

            $query->where('post_category.status', $selectedFilter);
        }
        // $query->whereNotIn('users.role_id', [2]);
        $paginator = $query->paginate($pageSize, ['*'], 'page', $page);

        $modifiedCollection = $paginator->getCollection()->map(function ($item) {
            return [
                'id'            => $item->id,
                'name'          => $item->name,
                'created_at'    => date("Y-M-d H:i:s", strtotime($item->created_at)),
                'updated_at'    => date("Y-M-d H:i:s", strtotime($item->updated_at)),
                'status'        => $item->status == 1 ? 'Active' : 'Inactive',
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
}
