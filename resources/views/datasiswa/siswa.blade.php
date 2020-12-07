@extends('bagian.sidebar')

@section('content')
<a href="/siswa/cetak_pdf" class="btn btn-primary" target="_blank" style="margin-top:3%;">CETAK PDF</a>
 
    <table class="table table-striped" style="text-align:center; margin-top:4%;">
        <thead>
            <tr>
                <th>Nipd</th>
                <th>Nisn</th>
                <th>Nama</th>
                <th>Jurusan</th>
                <th>Kelas</th>
                <th>Tempat Lahir</th>
                <th>Taanggal Lahir</th>
                <th>Status Siswa</th>
            </tr>
        </thead>
        <tbody>
            @foreach($siswas as $j)
            <tr>
                <td>{{ $j->nipd }}</td>
                <td>{{ $j->nisn }}</td>
                <td>{{ $j->nama }}</td>
                <td>{{ $j->jurusan }}</td>
                <td>{{ $j->kelas }}</td>
                <td>{{ $j->tempatlahir }}</td>
                <td>{{ $j->tangallahir }}</td>
                <td><button class="btn btn-primary"> {{ $j->status }} </button></td>
            </tr>
            @endforeach
        </tbody>
    </table>
@endsection