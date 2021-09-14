<?php

namespace App\Repositories\Backend;

use App\Events\Backend\Domains\DomainCreated;
use App\Events\Backend\Domains\DomainDeleted;
use App\Events\Backend\Domains\DomainUpdated;
use App\Exceptions\GeneralException;
use App\Models\Domain;
use App\Repositories\BaseRepository;
use Illuminate\Support\Str;

class DomainsRepository extends BaseRepository
{
    /**
     * Associated Repository Model.
     */
    const MODEL = Domain::class;

    /**
     * Sortable.
     *
     * @var array
     */
    private $sortable = [
        'id',
        'domain_name',
        'domain_url',
        'domain_description',
        'status',
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
        $perDomain = isset($options['per_page']) ? (int) $options['per_page'] : 20;
        $orderBy = isset($options['order_by']) && in_array($options['order_by'], $this->sortable) ? $options['order_by'] : 'created_at';
        $order = isset($options['order']) && in_array($options['order'], ['asc', 'desc']) ? $options['order'] : 'desc';
        $query = $this->query()
            ->with([
                'owner',
                'updater',
            ])
            ->orderBy($orderBy, $order);

        if ($perDomain == -1) {
            return $query->get();
        }

        return $query->paginate($perDomain);
    }

    /**
     * @return mixed
     */
    public function getForDataTable()
    { 
        return $this->query()->select([
                'domains.id',
                'domains.domain_name',
                'domains.domain_url',
                'domains.created_at',
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
        if ($this->query()->where('domain_name', $input['domain_name'])->first()) {
            throw new GeneralException(__('exceptions.backend.domains.already_exists'));
        }

        $input['domain_slug'] = Str::slug($input['domain_name']);
        $input['created_by'] = auth()->user()->id;
        $input['status'] = $input['status'] ?? 0;

        if ($domain = Domain::create($input)) {
            event(new DomainCreated($domain));

            return $domain->fresh();
        }

        throw new GeneralException(__('exceptions.backend.domains.create_error'));
    }

    /**
     * Update Domain.
     *
     * @param \App\Models\Domain $domain
     * @param array $input
     */
    public function update(Domain $domain, array $input)
    {
        if ($this->query()->where('domain_name', $input['domain_name'])->where('id', '!=', $domain->id)->first()) {
            throw new GeneralException(__('exceptions.backend.domains.already_exists'));
        }

        $input['domain_slug'] = Str::slug($input['domain_name']);
        $input['updated_by'] = auth()->user()->id;
        $input['status'] = $input['status'] ?? 0;

        if ($domain->update($input)) {
            event(new DomainUpdated($domain));

            return $domain;
        }

        throw new GeneralException(
            __('exceptions.backend.domains.update_error')
        );
    }

    /**
     * @param \App\Models\Domain $domain
     *
     * @throws GeneralException
     *
     * @return bool
     */
    public function delete(Domain $domain)
    {
        if ($domain->delete()) {
            event(new DomainDeleted($domain));

            return true;
        }

        throw new GeneralException(__('exceptions.backend.domains.delete_error'));
    }
}
