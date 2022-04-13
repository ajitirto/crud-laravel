<?php

namespace App\Http\Controllers;

use App\Models\Pegawai;
use Illuminate\Http\Request;

class PegawaiController extends Controller
{
    public function index()
    {
        // // mengambil data pegawai 
        $pegawai = Pegawai::all();

        // mengambil data pegawai yang id nya lebih besar dari 10
        // $pegawai = Pegawai::where('id', '>', 10)->get();

        // mengirim ke ciew
        return view('pegawai.pegawai', ['pegawai' => $pegawai]);
    }
    public function tambah()
    {
        return view('pegawai.tambah');
    }
    public function store(Request $request)
    {
        $this->validate($request, [
            'nama' => 'required',
            'alamat' => 'required'
        ]);
        Pegawai::create([
            'nama' => $request->nama,
            'alamat' => $request->alamat
        ]);
        return redirect('/pegawai');
    }
    public function edit($id)
    {
        $pegawai = Pegawai::find($id);
        return view('pegawai.edit', ['pegawai' => $pegawai]);
    }
    public function update($id, Request $request)
    {
        $this->validate($request, [
            'nama' => 'required',
            'alamat' => 'required'
        ]);

        $pegawai = Pegawai::find($id);
        $pegawai->nama = $request->nama;
        $pegawai->alamat = $request->alamat;
        $pegawai->save();

        return redirect('/pegawai');
    }
    public function hapus($id)
    {
        $pegawai = Pegawai::find($id);
        $pegawai->delete();
        return redirect('/pegawai');
    }
}
