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
        Schema::create('tbl_products_option_list', function (Blueprint $table) {
            $table->id();
            $table->string("option_name");
            $table->string("option_int");
            $table->date('created_date');
            $table->boolean("is_active");
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('tbl_products_option_list');
    }
};
