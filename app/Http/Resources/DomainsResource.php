<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\Resource;

class DomainsResource extends Resource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request
     *
     * @return array
     */
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'domain_name' => $this->domain_name,
            'domain_url' => $this->domain_url,
            'domain_description' => $this->domain_description,
            'status' => $this->status,
            'created_at' => $this->created_at->toDateTimeString(),
            'updated_at' => $this->updated_at->toDateTimeString(),
        ];
    }
}
