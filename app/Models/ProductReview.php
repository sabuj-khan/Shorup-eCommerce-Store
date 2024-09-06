<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductReview extends Model
{
    use HasFactory;

    protected $fillable = [
        'description',
        'rating',
        'product_id',
        'customer_id',
    ];

    public function customer(){
        return $this->belongsTo(CustomerProfile::class, 'customer_id');
    }

}
