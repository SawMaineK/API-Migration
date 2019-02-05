<?php

namespace App\Http\Controllers;

use App\Template;
use Illuminate\Http\Request;

class TemplateController extends Controller
{
     public function __construct() {
        header("Access-Control-Allow-Origin: *");
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data_result['status'] = 0;
         $result=Template::getAllTemplate();
         if(count($result) > 0){
            foreach ($result as $key => $value) {
                    $data[$key]['template_id'] = $value->id;
                    $data[$key]['title'] = $value->title;
                    $data[$key]['body'] = $value->body;
                     $data[$key]['template_status']=$value->status;
                }
                $data_result['status'] = 1;
                $data_result['message_list'] = "Template list.";
                $data_result['data'] = $data;
                return response($data_result, 200)->header('Content-Type', 'application/json');
                die;
         }else {
                $data_result['status'] = 0;
                $data_result['message'] ="Data not found";
                return response($data_result, 200)->header('Content-Type', 'application/json');
                die;
         }
     
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Template  $template
     * @return \Illuminate\Http\Response
     */
    public function showTemplateById(Request $request)
    {
        $template_id=$request->input('template_id');
        $KEY =$request->input('KEY');
        /*if ($KEY  == "") {
            $data['status'] = 0;
            $data['message'] = "Please enter key";
            return response($data, 200)->header('Content-Type', 'application/json');
            die;
        }
        if ($KEY  != env("KEY")) {
            $data['status'] = 0;
            $data['message'] = "Please enter valid key";
            return response($data, 200)->header('Content-Type', 'application/json');
            die;
        }*/
      if ($template_id == "") {
             $data['status'] = 0;
            $data['message'] = "Please enter template_id";
            return response($data, 200)->header('Content-Type', 'application/json');
        }
        $result=Template::GetTemplateByid($template_id);
        if(count($result) > 0){
            $data['title']=$result->title;
            $data['body']=$result->body;
            $data['template_status']=$result->status;
            $response['status'] = 1;
            $response['message'] = "Template detail";
            $response['data'] = $data;
            return response($response, 200)->header('Content-Type', 'application/json');
        }else{
             $response['status'] = 0;
            $response['message'] = 'data not found';
            return response($response, 200)->header('Content-Type', 'application/json');
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Template  $template
     * @return \Illuminate\Http\Response
     */
    public function edit(Template $template)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Template  $template
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Template $template)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Template  $template
     * @return \Illuminate\Http\Response
     */
    public function destroy(Template $template)
    {
        //
    }
}
