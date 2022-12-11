<?php
   
namespace App\Http\Controllers\API;
   
use Illuminate\Http\Request;
use App\Http\Controllers\API\BaseController as BaseController;
use App\Models\Companies;
use Validator;
   
class APIController extends BaseController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function getcompanies(Request $request)
    {
		$input = $request->all();
   
        $validator = Validator::make($input, [
            'token' => 'required'
        ]);
		// || ($input['token'] != Session::get('token'))
        if($validator->fails()){
            return $this->sendError('Validation Error.', $validator->errors());       
        }
		
        $companies = Companies::all();
    
        return $this->sendResponse($companies, 'Companies retrieved successfully.');
    }
}