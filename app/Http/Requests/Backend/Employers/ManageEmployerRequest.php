<?php

namespace App\Http\Requests\Backend\Employers;

use Illuminate\Foundation\Http\FormRequest;

class ManageEmployerRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    // public function authorize()
    // {
    //     return access()->allow('view-employer');
    // }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            //
        ];
    }
}
