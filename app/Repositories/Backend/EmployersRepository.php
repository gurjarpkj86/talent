<?php

namespace App\Repositories\Backend;

use App\Events\Backend\Employers\EmployerCreated;
use App\Events\Backend\Employers\EmployerDeleted;
use App\Events\Backend\Employers\EmployerUpdated;
use App\Exceptions\GeneralException;
use App\Models\Employer;
use App\Repositories\BaseRepository;
use Illuminate\Support\Str;

class EmployersRepository extends BaseRepository
{
    /**
     * Associated Repository Model.
     */
    const MODEL = Employer::class;

    /**
     * Sortable.
     *
     * @var array
     */
    private $sortable = [
        'id',
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
     * Retrieve List.
     *
     * @var array
     * @return Collection
     */
    public function retrieveList(array $options = [])
    {
        $perEmployer = isset($options['per_page']) ? (int) $options['per_page'] : 20;
        $orderBy = isset($options['order_by']) && in_array($options['order_by'], $this->sortable) ? $options['order_by'] : 'created_at';
        $order = isset($options['order']) && in_array($options['order'], ['asc', 'desc']) ? $options['order'] : 'desc';
        $query = $this->query()
            ->with([
                'owner',
                'updater',
            ])
            ->orderBy($orderBy, $order);

        if ($perEmployer == -1) {
            return $query->get();
        }

        return $query->paginate($perEmployer);
    }

    /**
     * @return mixed
     */
    public function getForDataTable()
    {
        return $this->query()
            ->leftjoin('users', 'users.id', '=', 'employers.created_at')
            ->select([
                'employers.id',
                'employers.emp_first_name',
                'employers.emp_last_name',
                'users.first_name as created_at',
                'employers.created_at',
            ]);
    }

    /**
     * @param array $input
     *
     * @throws \App\Exceptions\GeneralException
     *
     * @return bool
     */
    public function create(array $input)
    {
        if ($this->query()->where('emp_first_name', $input['emp_first_name'])->first()) {
            throw new GeneralException(__('exceptions.backend.employers.already_exists'));
        }

        $input['page_slug'] = Str::slug($input['emp_first_name']);
        $input['created_by'] = auth()->user()->id;
        $input['status'] = $input['status'] ?? 0;

        if ($Employer = Employer::create($input)) {
            event(new EmployerCreated($Employer));

            return $Employer->fresh();
        }

        throw new GeneralException(__('exceptions.backend.employers.create_error'));
    }

    /**
     * Update Employer.
     *
     * @param \App\Models\Employer $Employer
     * @param array $input
     */
    public function update(Employer $Employer, array $input)
    {
        if ($this->query()->where('emp_first_name', $input['emp_first_name'])->where('id', '!=', $Employer->id)->first()) {
            throw new GeneralException(__('exceptions.backend.employers.already_exists'));
        }

        $input['page_slug'] = Str::slug($input['emp_first_name']);
        //$input['updated_by'] = auth()->user()->id;
        $input['emp_status'] = $input['emp_status'] ?? 0;

        if ($Employer->update($input)) {
            event(new EmployerUpdated($Employer));
            return $Employer;
        }

        throw new GeneralException(
            __('exceptions.backend.employers.update_error')
        );
    }

    /**
     * @param \App\Models\Employer $Employer
     *
     * @throws GeneralException
     *
     * @return bool
     */
    public function delete(Employer $Employer)
    {
        if ($Employer->delete()) {
            event(new EmployerDeleted($Employer));

            return true;
        }

        throw new GeneralException(__('exceptions.backend.employers.delete_error'));
    }
}
