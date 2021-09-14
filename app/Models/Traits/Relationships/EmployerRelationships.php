<?php

namespace App\Models\Traits\Relationships;

use App\Models\Auth\User;

trait EmployerRelationships
{
    /**
     * Employer belongs to relationship with user.
     */
    public function owner()
    {
        return $this->belongsTo(User::class, 'created_by');
    }

    /**
     * Employer belongs to relationship with user.
     */
    public function updater()
    {
        return $this->belongsTo(User::class, 'updated_by');
    }
}
