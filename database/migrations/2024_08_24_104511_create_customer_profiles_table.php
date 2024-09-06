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
        Schema::create('customer_profiles', function (Blueprint $table) {
            $table->id();
            $table->string('cus_nam', 100);
            $table->string('cus_add', 250);
            $table->string('cus_city', 50);
            $table->string('cus_state', 50);
            $table->string('cus_postcode', 50);
            $table->string('cus_country', 50);
            $table->string('cus_phone', 15);
            $table->string('cus_fax', 50);

            $table->string('ship_name', 100);
            $table->string('ship_add', 250);
            $table->string('ship_city', 50);
            $table->string('ship_state', 50);
            $table->string('ship_postcode', 50);
            $table->string('ship_country', 50);
            $table->string('ship_phone', 50);

            $table->unsignedBigInteger('user_id');

            $table->foreign('user_id')->references('id')->on('users')
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
        Schema::dropIfExists('customer_profiles');
    }
};
