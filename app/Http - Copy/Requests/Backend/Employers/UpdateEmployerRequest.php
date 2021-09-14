<?php

namespace App\Http\Requests\Backend\Employers;

use Illuminate\Foundation\Http\FormRequest;

class UpdateEmployerRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return access()->allow('edit-employer');
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'emp_first_name' => ['required', 'max:191', 'unique:employers,emp_first_name,'.optional($this->route('employer'))->id],
            'emp_last_name' => ['required', 'string'],
            'emp_mobile' => ['string', 'nullable'],
            'emp_phone' => ['string', 'nullable'],
            'emp_status' => ['boolean'],
        ];
    }
}
