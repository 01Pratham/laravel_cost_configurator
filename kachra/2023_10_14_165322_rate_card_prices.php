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
        Schema::create('rate_card_prices', function (Blueprint $table) { 
            $table->id();
            $table->integer("rate_card_id");
            $table->integer('prod_id',5);
            $table->integer('selling_price',5);
            $table->integer('input_price',5);
            $table->integer('discountable_price',5);
            $table->integer('date_created',5);
            // $table->foreign('prod_id')->references('id')->on('login_master');
            // $table->foreign('user_role')->references('id')->on('role_master');

        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('rate_card_prices');
    }
};
