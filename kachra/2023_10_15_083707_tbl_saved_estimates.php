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
        Schema::create('tbl_saved_estimates', function (Blueprint $table) { 
            $table->id();
            $table->integer("emp_code");
            $table->integer('pot_id');
            $table->string('project_name');
            $table->integer('version');
            $table->integer('owner');
            $table->integer('last_changed_by');
            $table->integer('date_created');
            $table->integer('date_updated');
            $table->integer('contract_period');
            $table->integer('total_upfront');
            $table->text('data');
            $table->text('prices');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('tbl_saved_estimates');
        
    }
};
