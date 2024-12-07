<?php

namespace App\Http\Controllers\Public;

use Cart;
use Carbon\Carbon;
use App\Models\GamesAll;
use App\Models\GameType;
use Illuminate\Http\Request;
use App\Models\GamelistTransate;
use App\Http\Controllers\Controller;

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
                    ['label' => 'Post Category List', 'path' => '/category/post-category-list', 'icon' => 'bx bx-radio-circle'],
                    ['label' => 'Post List', 'path' => '/post/post-list', 'icon' => 'bx bx-radio-circle']
                ]
            ],
            [
                'label' => 'System',
                'path' => '#',
                'icon' => 'bx bx-category',
                'submenu' => [
                    ['label' => 'Global Category List', 'path' => 'category/list', 'icon' => 'bx bx-radio-circle'],
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
