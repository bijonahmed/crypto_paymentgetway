<?php

namespace App\Models;
// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use AuthorizesRequests;
use DB;

class BulkAddress extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;
    public $table = "bulk_address";
    protected $fillable = ['merchant_id', 'walletAddress', 'status','entry_by'];
}
