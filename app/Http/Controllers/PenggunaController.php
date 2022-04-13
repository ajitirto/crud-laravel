<?php

namespace App\Http\Controllers;

use App\Models\Pengguna;
// use App\Models\Telepon;

// use Illuminate\Http\Request;


class PenggunaController extends Controller
{
    //
    public function index()
    {
        $pengguna = Pengguna::all();
        return view('pengguna.pengguna', ['pengguna' => $pengguna]);
    }
}
