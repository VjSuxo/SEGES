<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ExpositorController extends Controller
{
    //
    public function expositorHome()
    {
        return view('expositor/home',["msg"=>"Hello! I am expositor"]);
    }

    public function expositorEvento()
    {
        return view('/expositor/evento/index',["msg"=>"Hello! I am expositor"]);
    }

    public function expositorMaterial()
    {
        return view('/expositor/evento/material',["msg"=>"Hello! I am expositor"]);
    }
}
