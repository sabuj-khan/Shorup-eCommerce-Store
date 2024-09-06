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
        Schema::create('product_reviews', function (Blueprint $table) {
            $table->id();
            $table->longText('description');
            $table->string('rating', 10);

            $table->unsignedBigInteger('product_id');
            $table->unsignedBigInteger('customer_id');

            $table->foreign('product_id')->references('id')->on('products')
            ->cascadeOnUpdate()
            ->restrictOnDelete();

            $table->foreign('customer_id')->references('id')->on('customer_profiles')
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
        Schema::dropIfExists('product_reviews');
    }
};
