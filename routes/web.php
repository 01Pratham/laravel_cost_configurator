<?php

use App\Http\Controllers\AddVmController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LoginController;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\CreateNewController;
use App\Http\Controllers\EstimateController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function(){
    return redirect(url("/home"));
});

Route::post("/Home", [LoginController::class, 'Validation']);



Auth::routes();

Route::get('/home', [HomeController::class, 'index'])->name('home');

Auth::routes();

Route::get('/home', [HomeController::class, 'index'])->name('home');



Route::get('/CreateNew', [CreateNewController::class, 'index'])->name('CreateNew');


Route::post('/estimate', [EstimateController::class,"validateRes"])->name("Estimate");

Route::post('/estimate/FinalQuotation', function(){return "Yes";})->name("finalQuotation");


Route::any("/Test", [EstimateController::class,"Test"]);

Route::post("/AddVM", [AddVmController::class, "index"]);