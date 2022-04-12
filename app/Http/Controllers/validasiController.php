<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class validasiController extends Controller
{
    //
    public function input()
    {
        return view('validasi.input');
    }

    public function proses(Request $request)
    {
        // Membuat validasi
        $this->validate($request, [
            'nama' => 'required|min:3|max:50',
            'pekerjaan' => 'required',
            'usia' => 'required|numeric'
        ]);

        return view('validasi.proses', ['data' => $request]);
    }
}
