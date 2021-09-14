<?php

namespace App\Repositories\Backend;

use App\Events\Backend\Adminlogins\AdminloginCreated;
use App\Events\Backend\Adminlogins\AdminloginDeleted;
use App\Events\Backend\Adminlogins\AdminloginUpdated;
use App\Exceptions\GeneralException;
use App\Models\Adminlogin;
use App\Repositories\BaseRepository;
use Illuminate\Support\Str;

class AdminloginsRepository extends BaseRepository
{
    /**
     * Associated Repository Model.
     */
    const MODEL = Adminlogin::class;

    /**
     * Sortable.
     *
     * @var array
     */
    private $sortable = [
        'id',
        'username',
        'password',
        'status',
        'created_at',
    ];

    /**
     * Retrieve List.
     *
     * @var array
     * @return Collection
     */
    public function retrieveList(array $options = [])
    {
        $perAdminlogin = isset($options['per_page']) ? (int) $options['per_page'] : 20;
        $orderBy = isset($options['order_by']) && in_array($options['order_by'], $this->sortable) ? $options['order_by'] : 'created_at';
        $order = isset($options['order']) && in_array($options['order'], ['asc', 'desc']) ? $options['order'] : 'desc';
        $query = $this->query()
            ->with([
                'owner',
                'updater',
            ])
            ->orderBy($orderBy, $order);

        if ($perAdminlogin == -1) {
            return $query->get();
        }

        return $query->paginate($perAdminlogin);
    }

    /**
     * @return mixed
     */
    public function getForDataTable()
    {
        return $this->query()
            ->leftjoin('users', 'users.id', '=', 'adminlogins.created_at')
            ->select([
                'adminlogins.id',
                'adminlogins.username',
                'adminlogins.password',
                'users.first_name as created_at',
                'adminlogins.created_at',
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
            throw new GeneralException(__('exceptions.backend.adminlogins.already_exists'));
        }

        $input['page_slug'] = Str::slug($input['emp_first_name']);
        $input['created_by'] = auth()->user()->id;
        $input['status'] = $input['status'] ?? 0;

        if ($Adminlogin = Adminlogin::create($input)) {
            event(new AdminloginCreated($Adminlogin));

            return $Adminlogin->fresh();
        }

        throw new GeneralException(__('exceptions.backend.adminlogins.create_error'));
    }

    /**
     * Update Adminlogin.
     *
     * @param \App\Models\Adminlogin $Adminlogin
     * @param array $input
     */
    public function update(Adminlogin $Adminlogin, array $input)
    {
        if ($this->query()->where('title', $input['title'])->where('id', '!=', $Adminlogin->id)->first()) {
            throw new GeneralException(__('exceptions.backend.adminlogins.already_exists'));
        }

        $input['page_slug'] = Str::slug($input['title']);
        $input['updated_by'] = auth()->user()->id;
        $input['status'] = $input['status'] ?? 0;

        if ($Adminlogin->update($input)) {
            event(new AdminloginUpdated($Adminlogin));

            return $Adminlogin;
        }

        throw new GeneralException(
            __('exceptions.backend.adminlogins.update_error')
        );
    }

    /**
     * @param \App\Models\Adminlogin $Adminlogin
     *
     * @throws GeneralException
     *
     * @return bool
     */
    public function delete(Adminlogin $Adminlogin)
    {
        if ($Adminlogin->delete()) {
            event(new AdminloginDeleted($Adminlogin));

            return true;
        }

        throw new GeneralException(__('exceptions.backend.adminlogins.delete_error'));
    }
}
