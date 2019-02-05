<?php

namespace App\Http\Middleware;

use Closure;

class IapiMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if($request->header('KEY') != env("KEY"))
        {
            return response(array('status' => 0, 'message' => 'Unauthorized Request.'), 200)->header('Content-Type', 'application/json');die();
        }
        
        return $next($request);
    }
}
