<?php

namespace App\Models;

use App\Models\Traits\Attributes\EmployerAttributes;
use App\Models\Traits\ModelAttributes;
use App\Models\Traits\Relationships\EmployerRelationships;
use Illuminate\Database\Eloquent\SoftDeletes;

class Employer extends BaseModel
{
    use SoftDeletes, ModelAttributes, EmployerRelationships, EmployerAttributes;

    /**
     * The guarded field which are not mass assignable.
     *
     * @var array
     */
    protected $guarded = ['id'];

    /**
     * Fillable.
     *
     * @var array
     */
    protected $fillable = [
        'emp_first_name',
        'emp_last_name',
        'emp_mobile',
        'emp_phone',
        'job_id',
        'emp_status',
        'created_at',
        'updated_at',
    ];

    /**
     * Casts.
     *
     * @var array
     */
    protected $casts = [
        'emp_status' => 'boolean',
    ];
}
