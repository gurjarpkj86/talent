<?php

namespace App\Http\Requests\Backend\Adminlogins;

use Illuminate\Foundation\Http\FormRequest;

class StoreAdminloginRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return access()->allow('create-adminlogin');
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'username' => ['required', 'max:191', 'unique:adminlogins,username'],
            'password' => ['required', 'string'],
            'status' => ['boolean'],
        ];
    }
}
