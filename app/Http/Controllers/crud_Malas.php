<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class crud_Malas extends Controller
{

    public function index()
    {
        // Mengambil database cruds semua
        // $crud = DB::table('cruds')->get();
        $crud = DB::table('cruds')->paginate(6);
        //masuk ke file view crud index dan ditambah dengan array cruds 
        return view('crud.index', ['cruds' => $crud]);
    }

    public function cari(Request $request)
    {
        // Menangkap data pencarian
        $cari = $request->cari;

        // Mengambil data cruds dimana dengan apa yang diketik 
        $crud = DB::table('cruds')->where('nama', 'like', '%' . $cari . '%')->paginate();

        // mengiirim data ke cruds ke view index 
        return view('crud.index', ['cruds' => $crud]);
    }

    public function tambah()
    {
        // mengembailakn tampilan pada crud tambah
        return view('crud.tambah');
    }
    public function store(Request $request)
    {
        // merequest  table crud untuk ditambahkan pada databasenya
        DB::table('cruds')->insert([
            'nama' => $request->nama,
            'perkenalan' => $request->perkenalan,
            'lokasi' => $request->lokasi,
            'cost' => $request->cost
        ]);
        // Alihkan paksa pada halapan crud
        return redirect('/crud');
    }
    public function edit($id)
    {
        $crud = DB::table('cruds')->where('id', $id)->get();

        return view('crud.edit', ['crud' => $crud]);
    }

    public function update(Request $request)
    {
        // Update database

        DB::table('cruds')->where('id', $request->id)->update([
            'nama' => $request->nama,
            'perkenalan' => $request->perkenalan,
            'lokasi' => $request->lokasi,
            'cost' => $request->cost
        ]);

        return redirect('/crud');
    }

    public function hapus($id)
    {
        // <Menghapus data pegawaiberdasarkan id yang terpilih
        DB::table('cruds')->where('id', $id)->delete();

        return redirect('/crud');
    }
}
