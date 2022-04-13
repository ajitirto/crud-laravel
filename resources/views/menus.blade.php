@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col">

                <a class='btn btn-warning btn-bg ' href="/crud">Ke Crud</a>

                <a class='btn btn-primary btn-bg ' href="/input">Ke input</a>
                <a class='btn btn-secondary btn-bg ' href="/pegawai">Ke pegawai</a>
                <a class='btn btn-info btn-bg ' href="/guru">Ke guru</a>
                <a class='btn btn-info btn-bg ' href="/pengguna">Ke pengguna</a>
                <a class='btn btn-info btn-bg ' href="/article">Ke article</a>
                <a class='btn btn-info btn-bg ' href="/anggota">Ke anggota</a>
            </div>
        </div>
    </div>
@endsection
