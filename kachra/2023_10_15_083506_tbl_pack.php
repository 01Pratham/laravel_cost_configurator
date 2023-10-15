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
        Schema::create('tbl_pack', function (Blueprint $table) { 
            $table->id();
            $table->integer("region");
            $table->string('pack_series');
            $table->string('sr_no');
            $table->string('pack');
            $table->integer('price');
            $table->integer('vcores');
            $table->integer('ram');
            $table->integer('disk');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('tbl_pack');
        
    }
};
