<?php

namespace App\Events\Backend\Employers;

use Illuminate\Queue\SerializesModels;

/**
 * Class EmployerUpdated.
 */
class EmployerUpdated
{
    use SerializesModels;

    /**
     * @var
     */
    public $Employer;

    /**
     * @param $Employer
     */
    public function __construct($Employer)
    {
        $this->Employer = $Employer;
    }
}
