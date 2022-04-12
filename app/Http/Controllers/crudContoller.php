<?php

namespace App\Http\Controllers;

use App\Models\crud;
use Illuminate\Http\Request;

class crudContoller extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $crud = crud::latest()->paginate(5);

        return view('crud.index', compact('crud'));;
        // return view('crud.index', compact('crud'))

        
        //     ->with('i', (request()->input('page', 1) - 1) * 5);
        // return view('crud.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('crud.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'introduction' => 'required',
            'location' => 'required',
            'cost' => 'required'
        ]);

        crud::create($request->all());

        return redirect()->route('crud.index')
            ->with('success', 'crud created successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\crud  $crud
     * @return \Illuminate\Http\Response
     */
    public function show(crud $crud)
    {
        return view('crud.show', compact('crud'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\crud  $crud
     * @return \Illuminate\Http\Response
     */
    public function edit(crud $crud)
    {
        return view('crud.edit', compact('crud'));
    }
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\crud  $crud
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, crud $crud)
    {
        $request->validate([
            'name' => 'required',
            'introduction' => 'required',
            'location' => 'required',
            'cost' => 'required'
        ]);
        $crud->update($request->all());

        return redirect()->route('crud.index');
        // return redirect()->route('crud.index')
        //     ->with('success', 'crud updated successfully');
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\crud  $crud
     * @return \Illuminate\Http\Response
     */
    public function destroy(crud $crud)
    {
        $crud->delete();

        return redirect()->route('crud.index')
            ->with('success', 'crud deleted successfully');
    }
}
