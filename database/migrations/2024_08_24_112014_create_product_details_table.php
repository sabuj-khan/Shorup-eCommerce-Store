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
        Schema::create('product_details', function (Blueprint $table) {
            $table->id();
            $table->string('image1', 200);
            $table->string('image2', 200);
            $table->string('image3', 200);
            $table->string('image4', 200);
            $table->longText('description');
            $table->string('color', 100);
            $table->string('size', 100);

            $table->unsignedBigInteger('product_id')->unique();

            $table->foreign('product_id')->references('id')->on('products')
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
        Schema::dropIfExists('product_details');
    }
};
