<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->string('title', 50);
            $table->string('short_des', 500);
            $table->string('price', 50);
            $table->boolean('discount');
            $table->string('discount_price', 50);
            $table->string('image', 200);
            $table->boolean('stock');
            $table->float('star');
            $table->enum('remark', ['popular', 'new', 'top', 'special', 'trending', 'regular']);

            $table->unsignedBigInteger('brand_id');
            $table->unsignedBigInteger('category_id');

            $table->foreign('brand_id')->references('id')->on('brands')
            ->cascadeOnUpdate()
            ->restrictOnDelete();

            $table->foreign('category_id')->references('id')->on('categories')
            ->cascadeOnUpdate()
            ->restrictOnDelete();

            $table->timestamp('created_at')->useCurrent();
            $table->timestamp('updated_at')->useCurrent()->useCurrentOnUpate();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('products');
    }
};
