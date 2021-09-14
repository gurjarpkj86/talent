<?php

namespace App\Models;

use App\Models\Traits\Attributes\DomainAttributes;
use App\Models\Traits\ModelAttributes;
use App\Models\Traits\Relationships\DomainRelationships;
use Illuminate\Database\Eloquent\SoftDeletes;

class Domain extends BaseModel
{
    use SoftDeletes, ModelAttributes, DomainRelationships, DomainAttributes;

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
        'domain_name',
        'domain_url',
        'domain_description',
        'status',
        'created_at',
        'updated_at',
    ];

    /**
     * Casts.
     *
     * @var array
     */
    protected $casts = [
        'status' => 'boolean',
    ];
}
