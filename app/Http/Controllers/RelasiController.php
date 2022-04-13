<?php

namespace App\Http\Controllers;

use App\Models\Anggota;
use App\Models\Hadiah;

use Illuminate\Http\Request;

class RelasiController extends Controller
{

    public function index()
    {
        $anggota = Anggota::get();
        return view('relasi.anggota', ['anggota' => $anggota]);
    }


    //
}
