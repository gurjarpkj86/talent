<?php

namespace App\Http\Requests\Backend\Domains;

use Illuminate\Foundation\Http\FormRequest;

class UpdateDomainRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return access()->allow('edit-domain');
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'domain_name' => ['required', 'max:191', 'unique:domains,domain_name,'.optional($this->route('domain'))->id],
            'domain_url' => ['required', 'string'],
            'domain_description' =>  ['string', 'nullable'],
            'status' => ['boolean'],
        ];
    }
}
