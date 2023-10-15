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
        Schema::create('login_master', function (Blueprint $table) {
            $table->id(); // Use 'id' for an auto-incrementing primary key
            $table->integer('employee_code')->unique();
            $table->string('first_name', 100);
            $table->string('last_name', 100);
            $table->string('username', 20);
            $table->string('email', 100);
            $table->string('password', 100);
            $table->string('department', 10);
            $table->string('designation', 50);
            $table->integer('manager_code')->nullable(); // Remove length parameter
            $table->integer('user_role')->nullable(); // Remove length parameter
            $table->integer('crm_user_id')->nullable(); // Remove length parameter
            // $table->foreign('user_role')->references('id')->on('role_master');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('login_master');
    }
};
