<?php

namespace App\Http\Controllers;

use App\Models\Ambiente;
use App\Http\Requests\Ambiente\StroreRequest;
use App\Http\Requests\Ambiente\UpdateRequest;
class AmbienteController extends Controller
{
      /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $ambientes = Ambiente::get();
        return view('admin.ambiente.index',compact('ambientes'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {

        return view('admin.ambiente.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreRequest $request)
    {
        Ambiente::create($request);
        return redirect()->route('ambientes.index');
    }

    /**
     * Display the specified resource.
     */
    public function show(Ambiente $ambiente)
    {
        return view('admin.ambiente.show',compact('ambiente'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Ambiente $ambiente)
    {
        return view('admin.edit.ambiente.show',compact('ambiente'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateRequest $request, Ambiente $ambiente)
    {
        Ambiente::update($request->all());
        return redirect()->route('ambientes.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Ambiente $ambiente)
    {
        $ambiente->delete();
        return redirect()->route('ambientes.index');
    }
}
