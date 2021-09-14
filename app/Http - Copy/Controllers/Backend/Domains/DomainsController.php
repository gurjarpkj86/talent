<?php

namespace App\Http\Controllers\Backend\Domains;

use App\Http\Controllers\Controller;
use App\Http\Requests\Backend\Domains\CreateDomainRequest;
use App\Http\Requests\Backend\Domains\DeleteDomainRequest;
use App\Http\Requests\Backend\Domains\EditDomainRequest;
use App\Http\Requests\Backend\Domains\ManageDomainRequest;
use App\Http\Requests\Backend\Domains\StoreDomainRequest;
use App\Http\Requests\Backend\Domains\UpdateDomainRequest;
use App\Http\Responses\Backend\Domain\EditResponse;
use App\Http\Responses\RedirectResponse;
use App\Http\Responses\ViewResponse;
use App\Models\Domain;
use App\Repositories\Backend\DomainsRepository;
use Illuminate\Support\Facades\View;

class DomainsController extends Controller
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
        View::share('js', ['domains']);
    }

    /**
     * @param \App\Http\Requests\Backend\Domains\ManageDomainRequest $request
     *
     * @return \App\Http\Responses\ViewResponse
     */
    public function index(ManageDomainRequest $request)
    {
        return new ViewResponse('backend.domains.index');
    }

    /**
     * @param \App\Http\Requests\Backend\Domains\CreateDomainRequest $request
     *
     * @return \App\Http\Responses\ViewResponse
     */
    public function create(CreateDomainRequest $request)
    { 
        return new ViewResponse('backend.domains.create');
    }

    /**
     * @param \App\Http\Requests\Backend\Domains\StoreDomainRequest $request
     *
     * @return \App\Http\Responses\RedirectResponse
     */
    public function store(StoreDomainRequest $request)
    {
        $this->repository->create($request->except(['_token', '_method']));

        return new RedirectResponse(route('admin.domains.index'), ['flash_success' => __('Domain created successfully')]);
    }

    /**
     * @param \App\Models\Domain $domain
     * @param \App\Http\Requests\Backend\Domains\EditDomainRequest $request
     *
     * @return \App\Http\Responses\Backend\Blog\EditResponse
     */
    public function edit(Domain $domain, EditDomainRequest $request)
    { 
        return new EditResponse($domain);
    }

    /**
     * @param \App\Models\Domain $domain
     * @param \App\Http\Requests\Backend\Domains\UpdateDomainRequest $request
     *
     * @return \App\Http\Responses\RedirectResponse
     */
    public function update(Domain $domain, UpdateDomainRequest $request)
    {
        $this->repository->update($domain, $request->except(['_token', '_method']));

        return new RedirectResponse(route('admin.domains.index'), ['flash_success' => __('Domain updated successfully')]);
    }

    /**
     * @param \App\Models\Domain $domain
     * @param \App\Http\Requests\Backend\Domains\DeleteDomainRequest $request
     *
     * @return \App\Http\Responses\RedirectResponse
     */
    public function destroy(Domain $domain, DeleteDomainRequest $request)
    {
        $this->repository->delete($domain);

        return new RedirectResponse(route('admin.domains.index'), ['flash_success' => __('Domain deleted successfully')]);
    }
}
