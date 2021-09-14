<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Requests\Backend\Adminlogins\DeleteAdminloginRequest;
use App\Http\Requests\Backend\Adminlogins\ManageAdminloginRequest;
use App\Http\Requests\Backend\Adminlogins\StoreAdminloginRequest;
use App\Http\Requests\Backend\Adminlogins\UpdateAdminloginRequest;
use App\Http\Resources\AdminloginsResource;
use App\Models\Adminlogin;
use App\Repositories\Backend\AdminloginsRepository;
use Illuminate\Http\Response;

/**
 * @group Adminlogins Management
 *
 * Class AdminloginsController
 *
 * APIs for Adminlogins Management
 *
 * @authenticated
 */
class AdminloginsController extends APIController
{
    /**
     * Repository.
     *
     * @var AdminloginsRepository
     */
    protected $repository;

    /**
     * __construct.
     *
     * @param $repository
     */
    public function __construct(AdminloginsRepository $repository)
    {
        $this->repository = $repository;
    }

    /**
     * Get all Adminlogins.
     *
     * This endpoint provides a paginated list of all Adminlogins. You can customize how many records you want in each
     * returned response as well as sort records based on a key in specific order.
     *
     * @queryParam Adminlogin Which Adminlogin to show. Example: 12
     * @queryParam per_Adminlogin Number of records per Adminlogin. (use -1 to retrieve all) Example: 20
     * @queryParam order_by Order by database column. Example: created_at
     * @queryParam order Order direction ascending (asc) or descending (desc). Example: asc
     *
     * @responseFile status=401 scenario="api_key not provided" responses/unauthenticated.json
     * @responseFile responses/Adminlogin/Adminlogin-list.json
     *
     * @param \Illuminate\Http\ManageAdminloginRequest $request
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function index(ManageAdminloginRequest $request)
    {
        $collection = $this->repository->retrieveList($request->all());
        return AdminloginsResource::collection($collection);
    }

    public function login(ManageAdminloginRequest $request)
    { 
        dd($request->all());
        $collection = $this->repository->retrieveList($request->all());
        return AdminloginsResource::collection($collection);
    }

    /**
     * Gives a specific Adminlogin.
     *
     * This endpoint provides you a single Adminlogin
     * The Adminlogin is identified based on the ID provided as url parameter.
     *
     * @urlParam id required The ID of the Adminlogin
     *
     * @responseFile status=401 scenario="api_key not provided" responses/unauthenticated.json
     * @responseFile responses/Adminlogin/Adminlogin-show.json
     *
     * @param ManageAdminloginRequest $request
     * @param \App\Models\Adminlogin $Adminlogin
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function show(ManageAdminloginRequest $request, Adminlogin $Adminlogin)
    {

        //Adminlogin Update
        $id = '1';
        $emp_first_name = 'fsfsfsfs';
        Adminlogin::where('id', $id)->update(['emp_first_name' => $emp_first_name]);

        //End Adminlogin Update


        //Adminlogin List
        // $empList = Adminlogin::all();
        // $empList = $empList->toArray();
        // $empListArr = array();
        // if($empList !=null){
        //     foreach($empList as $eData){ 
        //         $emp_id = $eData['id'];
        //         $emp_first_name = $eData['emp_first_name'];
        //         $emp_last_name = $eData['emp_last_name']; 
        //         $empListArr[$emp_id] = $emp_first_name.' '.$emp_last_name;
        //     }
        // }
        // return response()->json([
        //     'emp_list' => $empListArr,
        //     'status' => 'success',
        //     'code'      =>  200,
        // ]);
        //End Adminlogin List
        //return new AdminloginsResource($empListArr);
    }

    /**
     * Create a new Adminlogin.
     *
     * This endpoint lets you create new Adminlogin
     *
     * @responseFile status=401 scenario="api_key not provided" responses/unauthenticated.json
     * @responseFile status=201 responses/Adminlogin/Adminlogin-store.json
     *
     * @param \App\Http\Requests\Backend\Adminlogins\StoreAdminloginRequest $request
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function store(StoreAdminloginRequest $request)
    { echo 'store'; exit;
        $Adminlogin = $this->repository->create($request->validated());

        return (new AdminloginsResource($Adminlogin))
            ->response()
            ->setStatusCode(Response::HTTP_CREATED);
    }

    /**
     * Update Adminlogin.
     *
     * This endpoint allows you to update existing Adminlogin with new data.
     * The Adminlogin to be updated is identified based on the ID provided as url parameter.
     *
     * @urlParam id required The ID of the Adminlogin
     *
     * @responseFile status=401 scenario="api_key not provided" responses/unauthenticated.json
     * @responseFile responses/Adminlogin/Adminlogin-update.json
     *
     * @param \App\Models\Adminlogin $Adminlogin
     * @param \App\Http\Requests\Backend\Adminlogins\UpdateAdminloginRequest $request
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function update(UpdateAdminloginRequest $request, Adminlogin $Adminlogin)
    { echo 'update'; exit; exit;
        $Adminlogin = $this->repository->update($Adminlogin, $request->validated());

        return new AdminloginsResource($Adminlogin);
    }

    /**
     * Delete Adminlogin.
     *
     * This endpoint allows you to delete a Adminlogin
     * The Adminlogin to be deleted is identified based on the ID provided as url parameter.
     *
     * @urlParam id required The ID of the Adminlogin
     *
     * @responseFile status=401 scenario="api_key not provided" responses/unauthenticated.json
     * @responseFile status=204 scenario="When the record is deleted" responses/Adminlogin/Adminlogin-destroy.json
     *
     * @param \App\Models\Adminlogin $Adminlogin
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function destroy(DeleteAdminloginRequest $request, Adminlogin $Adminlogin)
    {
        $this->repository->delete($Adminlogin);

        return response()->noContent();
    }
}
