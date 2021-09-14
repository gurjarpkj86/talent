<?php

namespace App\Models;

use App\Models\Traits\Attributes\AdminLoginAttributes;
use App\Models\Traits\ModelAttributes;
use App\Models\Traits\Relationships\AdminLoginRelationships;
use Illuminate\Database\Eloquent\SoftDeletes;

class AdminLogin extends BaseModel
{
    use SoftDeletes, ModelAttributes, AdminLoginRelationships, AdminLoginAttributes;

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
        'username',
        'password',
        'status',
        'created_at',
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
