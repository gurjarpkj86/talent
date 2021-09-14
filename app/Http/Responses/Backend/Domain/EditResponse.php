<?php

namespace App\Http\Responses\Backend\Domain;

use Illuminate\Contracts\Support\Responsable;

class EditResponse implements Responsable
{
    /**
     * @var \App\Models\Domain\Domain
     */
    protected $domain;

    /**
     * @param \App\Models\Domain\Domain $domain
     */
    public function __construct($domain)
    {
        $this->domain = $domain;
    }

    /**
     * toReponse.
     *
     * @param \Illuminate\Http\Request $request
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function toResponse($request)
    { 
        return view('backend.domains.edit')
            ->withDomain($this->domain);
    }
}
