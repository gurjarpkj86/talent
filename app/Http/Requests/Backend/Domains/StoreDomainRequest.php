<?php

namespace App\Http\Requests\Backend\Domains;

use Illuminate\Foundation\Http\FormRequest;

class StoreDomainRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return access()->allow('create-domain');
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'domain_name' => ['required', 'max:191', 'unique:domains,domain_name'],
            'domain_url' => ['required', 'string'],
            'status' => ['boolean'],
        ];
    }
}
