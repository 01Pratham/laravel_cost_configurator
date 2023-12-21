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
        Schema::create('tbl_product_list', function (Blueprint $table) { 
            $table->id();
            $table->string("sku_code",18);
            $table->integer('region_id');
            $table->string("primary_category");
            $table->string("sec_category");
            $table->string("prod_int");
            $table->string("default_name");
            $table->string("product_name");
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('tbl_product_list');
    }
};
