<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Requests\Backend\Employers\DeleteEmployerRequest;
use App\Http\Requests\Backend\Employers\ManageEmployerRequest;
use App\Http\Requests\Backend\Employers\StoreEmployerRequest;
use App\Http\Requests\Backend\Employers\UpdateEmployerRequest;
use App\Http\Resources\EmployersResource;
use App\Models\Employer;
use App\Repositories\Backend\EmployersRepository;
use Illuminate\Http\Response;

/**
 * @group Employers Management
 *
 * Class EmployersController
 *
 * APIs for Employers Management
 *
 * @authenticated
 */
class EmployersController extends APIController
{
    /**
     * Repository.
     *
     * @var EmployersRepository
     */
    protected $repository;

    /**
     * __construct.
     *
     * @param $repository
     */
    public function __construct(EmployersRepository $repository)
    {
        $this->repository = $repository;
    }

    /**
     * Get all Employers.
     *
     * This endpoint provides a paginated list of all Employers. You can customize how many records you want in each
     * returned response as well as sort records based on a key in specific order.
     *
     * @queryParam Employer Which Employer to show. Example: 12
     * @queryParam per_Employer Number of records per Employer. (use -1 to retrieve all) Example: 20
     * @queryParam order_by Order by database column. Example: created_at
     * @queryParam order Order direction ascending (asc) or descending (desc). Example: asc
     *
     * @responseFile status=401 scenario="api_key not provided" responses/unauthenticated.json
     * @responseFile responses/Employer/Employer-list.json
     *
     * @param \Illuminate\Http\ManageEmployerRequest $request
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function index(ManageEmployerRequest $request)
    {
        $collection = $this->repository->retrieveList($request->all());
        return EmployersResource::collection($collection);
    }

    /**
     * Gives a specific Employer.
     *
     * This endpoint provides you a single Employer
     * The Employer is identified based on the ID provided as url parameter.
     *
     * @urlParam id required The ID of the Employer
     *
     * @responseFile status=401 scenario="api_key not provided" responses/unauthenticated.json
     * @responseFile responses/Employer/Employer-show.json
     *
     * @param ManageEmployerRequest $request
     * @param \App\Models\Employer $Employer
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function show(ManageEmployerRequest $request, Employer $Employer)
    {
        return new EmployersResource($Employer);
    }

    /**
     * Create a new Employer.
     *
     * This endpoint lets you create new Employer
     *
     * @responseFile status=401 scenario="api_key not provided" responses/unauthenticated.json
     * @responseFile status=201 responses/Employer/Employer-store.json
     *
     * @param \App\Http\Requests\Backend\Employers\StoreEmployerRequest $request
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function store(StoreEmployerRequest $request)
    {
        $Employer = $this->repository->create($request->validated());

        return (new EmployersResource($Employer))
            ->response()
            ->setStatusCode(Response::HTTP_CREATED);
    }

    /**
     * Update Employer.
     *
     * This endpoint allows you to update existing Employer with new data.
     * The Employer to be updated is identified based on the ID provided as url parameter.
     *
     * @urlParam id required The ID of the Employer
     *
     * @responseFile status=401 scenario="api_key not provided" responses/unauthenticated.json
     * @responseFile responses/Employer/Employer-update.json
     *
     * @param \App\Models\Employer $Employer
     * @param \App\Http\Requests\Backend\Employers\UpdateEmployerRequest $request
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function update(UpdateEmployerRequest $request, Employer $Employer)
    { print_r($request); exit;
        $Employer = $this->repository->update($Employer, $request->validated());

        return new EmployersResource($Employer);
    }

    /**
     * Delete Employer.
     *
     * This endpoint allows you to delete a Employer
     * The Employer to be deleted is identified based on the ID provided as url parameter.
     *
     * @urlParam id required The ID of the Employer
     *
     * @responseFile status=401 scenario="api_key not provided" responses/unauthenticated.json
     * @responseFile status=204 scenario="When the record is deleted" responses/Employer/Employer-destroy.json
     *
     * @param \App\Models\Employer $Employer
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function destroy(DeleteEmployerRequest $request, Employer $Employer)
    {
        $this->repository->delete($Employer);

        return response()->noContent();
    }
}
