<?php

namespace App\Http\Controllers\Backend\Domains;

use App\Http\Controllers\Controller;
use App\Http\Requests\Backend\Domains\ManageDomainRequest;
use App\Repositories\Backend\DomainsRepository;
use Yajra\DataTables\Facades\DataTables;

class DomainsTableController extends Controller
{
    /**
     * @var \App\Repositories\Backend\DomainsRepository
     */
    protected $repository;

    /**
     * @param \App\Repositories\Backend\DomainsRepository $repository
     */
    public function __construct(DomainsRepository $repository)
    {
        $this->repository = $repository;
    }

    /**
     * @param \App\Http\Requests\Backend\Domains\ManageDomainRequest $request
     *
     * @return mixed
     */
    public function __invoke(ManageDomainRequest $request)
    { 
        return Datatables::of($this->repository->getForDataTable())
            ->filterColumn('status', function ($query, $keyword) {
                if (in_array(strtolower($keyword), ['active', 'inactive'])) {
                    $query->where('domains.status', (strtolower($keyword) == 'active') ? 1 : 0);
                }
            })
            ->editColumn('status', function ($domain) {
                return $domain->status_label;
            })
            ->editColumn('created_at', function ($domain) {
                $crDate = $domain->created_at->toDateString();
                $crDate = date('m-d-Y',strtotime($crDate));
                return $crDate; //$domain->created_at->toDateString();
            })
            ->addColumn('actions', function ($domain) {
                return $domain->action_buttons;
            })
            ->escapeColumns(['domain_name'])
            ->make(true);
    }
}
