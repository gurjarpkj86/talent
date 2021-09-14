<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\Resource;

class EmployersResource extends Resource
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
            'emp_first_name' => $this->emp_first_name,
            'emp_last_name' => $this->emp_last_name,
            'emp_mobile' => $this->emp_mobile,
            'emp_phone' => $this->emp_phone,
            'job_id' => $this->job_id,
            'emp_status' => $this->emp_status,
            'created_at' => $this->created_at->toDateTimeString(),
            'updated_at' => $this->updated_at->toDateTimeString(),
        ];
    }
}
