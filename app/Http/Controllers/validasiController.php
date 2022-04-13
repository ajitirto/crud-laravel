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
        // membuat custom  notifikasi
        $messages = [
            'required' => ':attribute wajib diisi ya!',
            'min' => ':attribute harus diisi minimal :min karakter ya!!',
            'max' => ':attribute harus diisi maksimal dengan :max karakter ya!',
            'numeric' => 'usia harus di isi dengan angka'
        ];
        // Membuat validasi
        $this->validate($request, [
            'nama' => 'required|min:3|max:20',
            'pekerjaan' => 'required',
            'usia' => 'required|numeric'
        ], $messages);

        return view('validasi.proses', ['data' => $request]);
    }
}
