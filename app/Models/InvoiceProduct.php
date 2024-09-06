<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class InvoiceProduct extends Model
{
    use HasFactory;

    protected $fillable = [
        'invoice_id',
        'user_id',
        'product_id',
        'qty',
        'sale_price',
    ];

    public function product(){
        return $this->belongsTo(Product::class);
    }



}
