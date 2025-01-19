<?php

namespace App\Models;
// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use AuthorizesRequests;
use DB;

class MerchantRequestDemo extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;
    public $table = "merchant_request_demo";
    protected $fillable = ['api_key_id', 'merchant_id', 'amount', 'api_key','password', 'status'];
}
