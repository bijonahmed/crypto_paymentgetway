<?php

namespace App\Http\Controllers\Public;

use Cart;
use Carbon\Carbon;
use App\Models\Game;
use App\Models\User;
use App\Models\Order;
use App\Models\Videos;
use App\Models\Gallery;
use App\Models\GameList;
use App\Models\GamesAll;
use App\Models\GameType;
//use Darryldecode\Cart\Cart;
use App\Models\ApiConfig;
use App\Models\Categorys;
use App\Models\GameCategory;
use App\Models\GamePlatform;
use App\Models\HostersModel;
use Illuminate\Http\Request;
use App\Models\Chaturbateapi;
use App\Models\GamePlatforms;
use App\Models\MystoreHistory;
use App\Models\VideosThunmnail;
use App\Jobs\ProcessExcelUpload;
use App\Models\GamelistTransate;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Storage;
use PhpOffice\PhpSpreadsheet\IOFactory;
use Illuminate\Support\Facades\Redirect;

class PublicController extends Controller
{

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
                'label' => 'User Management',
                'path' => '#',
                'icon' => 'bx bx-category',
                'submenu' => [
                    ['label' => 'Role List', 'path' => '/user/role-list', 'icon' => 'bx bx-radio-circle'],
                    ['label' => 'Permission List', 'path' => '#', 'icon' => 'bx bx-radio-circle'],
                    ['label' => 'Assign List', 'path' => '#', 'icon' => 'bx bx-radio-circle'],
                    ['label' => 'Super Admin List', 'path' => '/user/merchant-list', 'icon' => 'bx bx-radio-circle'],
                    ['label' => 'Admin List', 'path' => '/user/merchant-list', 'icon' => 'bx bx-radio-circle'],
                    ['label' => 'Merchant List', 'path' => '/user/merchant-list', 'icon' => 'bx bx-radio-circle']
                ]
            ],
            [
                'label' => 'Post Management',
                'path' => '#',
                'icon' => 'bx bx-category',
                'submenu' => [
                    ['label' => 'Category List', 'path' => '#', 'icon' => 'bx bx-radio-circle'],
                    ['label' => 'Post List', 'path' => 'app-chat-box.html', 'icon' => 'bx bx-radio-circle']
                ]
            ],
            [
                'label' => 'System Management',
                'path' => '#',
                'icon' => 'bx bx-category',
                'submenu' => [
                    ['label' => 'Configuration System', 'path' => 'app-emailbox.html', 'icon' => 'bx bx-radio-circle'],
                    ['label' => 'Wallet Address', 'path' => 'app-chat-box.html', 'icon' => 'bx bx-radio-circle']
                ]
            ]
        ];

        return response()->json($menu);
    }

    public function filterGames(Request $request)
    {

        $search         = $request->input('search', '');
        $platformId     = $request->input('platformId', '');
        $gameTypeId     = $request->input('gameTypeId', '');
        $gamesQuery     = GamesAll::query();
        // Apply search filter
        if ($search) {
            $gamesQuery->where('name', 'like', '%' . $search . '%');
        }
        // Apply platform filter
        if ($platformId) {
            $gamesQuery->where('platform_id', $platformId);
        }

        // Apply game type filter
        if ($gameTypeId) {
            $gamesQuery->where('gametype_id', $gameTypeId);
        }
        // Get the filtered games
        $allGames = $gamesQuery->get();

        $dataList = [];
        foreach ($allGames as $v) {
            $chkGameTrans = GamelistTransate::where('gameid', $v->gameid)->first();
            $dataList[] = [
                'id'            => $v->id,
                'name'          => $v->name,
                'translate_name' => !empty($chkGameTrans) ? $chkGameTrans->name : "",
                'slug'          => $v->slug,
                'game_type'     => $v->game_type,
                'gameid'        => $v->gameid,
                'imagepath'     => !empty($v->game_images) ? url($v->game_images) : "", // Path for the image
                'status'        => $v->status,
            ];
        }
        return response()->json([
            'gameTypeName' => "",
            'success' => true,
            'message' => 'Games fetched successfully.',
            'data'    => $dataList,
        ], 200);
        // Return filtered games as a JSON response
        //return response()->json($games);
    }

}
