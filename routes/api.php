<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

/*Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});*/

Route::group(['namespace' => 'Api\V1', 'prefix' => 'v1', 'as' => 'v1.'], function () {
    Route::group(['prefix' => 'auth', 'middleware' => ['guest']], function () {
        // Route::post('register', 'RegisterController@register');
        Route::post('login', 'AuthController@login');
        // Password Reset
        // Route::post('password/email', 'ForgotPasswordController@sendResetLinkEmail');
    });

    Route::group(['middleware' => ['auth:api']], function () {
        Route::group(['prefix' => 'auth'], function () {
            Route::post('logout', 'AuthController@logout');
            Route::get('me', 'AuthController@me');
        });

        // Page
        Route::apiResource('pages', 'PagesController');

        // Faqs
        Route::apiResource('faqs', 'FaqsController');

        // Blog Categories
        Route::apiResource('blog-categories', 'BlogCategoriesController');

        // Blog Tags
        Route::apiResource('blog-tags', 'BlogTagsController');

        // Blogs
        Route::apiResource('blogs', 'BlogsController');

        // Employer
        //Route::apiResource('employers', 'EmployersController');
        //Route::post('emp_update/{id}', 'EmployersController@update');

        Route::post('adminlogin', 'AdminloginsController@login');
    });
});

Route::get('/employer_list', 'Api\V1\EmployersController@list');
Route::get('/employer_details/{Employer}', 'Api\V1\EmployersController@show');
Route::put('/employer_update/{Employer}', 'Api\V1\EmployersController@update');
