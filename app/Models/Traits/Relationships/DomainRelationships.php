<?php

namespace App\Models\Traits\Relationships;

use App\Models\Auth\User;

trait DomainRelationships
{
    /**
     * Domain belongs to relationship with user.
     */
    public function owner()
    {
        return $this->belongsTo(User::class, 'created_by');
    }

    /**
     * Domain belongs to relationship with user.
     */
    public function updater()
    {
        return $this->belongsTo(User::class, 'updated_by');
    }
}
