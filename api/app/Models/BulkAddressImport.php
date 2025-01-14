<?php

namespace App\Imports;

use App\Models\BulkAddress;
use Maatwebsite\Excel\Concerns\ToModel;

class BulkAddressImport implements ToModel
{
    /**
     * Define the model's table name and fillable fields.
     */
    public $table = "bulk_address"; // Specify the table name

    protected $fillable = [
        'merchant_id', 
        'walletAddress', 
        'status', 
        'entry_by'
    ];

    public function model(array $row)
    {
        return new BulkAddress([
            'merchant_id'   => $row[0], // Assuming column 1 is merchant_id
            'walletAddress' => $row[1], // Assuming column 2 is walletAddress
            'status'        => $row[2], // Assuming column 3 is status
           
        ]);
    }
}
