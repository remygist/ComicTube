<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    if (Auth::check()) {
        return redirect('/dashboard');
    }
    return view('welcome');
});


Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__.'/auth.php';

Route::get('/dashboard',[\App\Http\Controllers\StreamingController::class, 'displayContent'])->name('dashboard');
Route::get('/search', [\App\Http\Controllers\StreamingController::class, 'searchContent'])->name('search');
Route::get('/movies/{id}', [\App\Http\Controllers\StreamingController::class, 'showMovie'])->name('movies.show');
Route::get('/shows/{id}', [\App\Http\Controllers\StreamingController::class, 'showShow'])->name('shows.show');
Route::get('/movies', [\App\Http\Controllers\StreamingController::class, 'indexMovies'])->name('movies.index');
Route::get('/shows', [\App\Http\Controllers\StreamingController::class, 'indexShows']) ->name('shows.index');

