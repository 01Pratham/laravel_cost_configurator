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
        Schema::create('tbl_rate_card', function (Blueprint $table) { 
            $table->id();
            $table->string("rate_card_name");
            $table->integer('created_by');
            $table->date('created_date');
            $table->integer('is_active');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('tbl_rate_card');
    }
};
