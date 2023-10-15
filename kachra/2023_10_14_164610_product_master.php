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
        Schema::create('product_master', function (Blueprint $table) { 
            $table->id();
            $table->string("sku_code",18);
            $table->integer('region');
            $table->string("primary_category");
            $table->string("sec_category");
            $table->string("prod_int");
            $table->string("product");
            // $table->foreign('region')->references('id')->on('region_master');
            
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('product_master');
    }
};
