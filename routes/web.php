<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Conversations\ConversationsController;
use App\Http\Controllers\HomeController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();
Route::get('/home', [HomeController::class, 'index'])->name('home');


Route::group(['middleware' => ['auth','verified']], function() {
    Route::get('/conversations/create', [ConversationsController::class, 'create'])->name('create');
    Route::get('/conversations', [ConversationsController::class, 'index'])->name('index');
    Route::get('/conversations/{conversation}', [ConversationsController::class, 'show'])->name('show');
});
