<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="{{asset('landing_page/style.css')}}">
    <link href='https://cdn.jsdelivr.net/npm/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@600&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Rubik:wght@400;500&display=swap" rel="stylesheet">
    <title>Tampilan Home</title>
</head>
<body>
    <div class="warp">
        <header>
            <div class="logo">SMK Taruna Bhakti Depok<br>
                <br>
           Our Quality Ask Be Different</div>
            <div class="menu">
                <ul>
                    <li><a href="{{ route('login') }}">Masuk</a></li>
                </ul>
            </div>
        </header>
    </div>

    <div class="container">
        <div class="content">
            <h3>
                
                <h3>
            <div class="btn-group">
                <a href="admin" class="color1">Mulai Mengatur</a>
                <!-- <a href="#">Learn more</a> -->
            </div>
        </div>
    
        <div class="gif">
            
        </div>
    </div>

    <div class="about-title">
        <center>
            <h2>Visi Dan Misi</h2>
        </center> 
    </div>

    <div class="about">
        <div class="about-inner">
            <h2>
                Visi SMK TARUNA BHAKTI<br>
                <br>
                Menghasilkan lulusan yang kompeten dalam IPTEK DAN  IMTAQ, serta mampu bersaing pada tingkat nasional dan global<br>
                <br>
                Misi SMK TARUNA BHAKTI<br>
                <br>
                    1. Menumbuhkan semangat kreatifitas, bersinergi dan kompetitif kepada seluruh warga sekolah<br>
                    2. Melaksanakan kurikulum melalui pembelajaran dan penilaian berbasis kompetensi, Berbasis wirausaha, berwawasan lingkungan.dan berlandaskan kejujuran<br>
                    3. Meningkatkan kualitas sumber daya manusia melalui sertifikasi Kompetensi Tingkat Nasional dan Internasional<br>
                    4. Mengembangkan potensi peserta didik melalui kegiatan Minat dan Bakat dan pembinaan kedisiplinan<br>
                    5. Menerapkan layanan prima dalam pengelolaan sekolah melalui Sistem Manajeman Mutu<br>
                
                </h2>
        </div>
        <div class="about-image">
            <img src="{{asset('landing_page/about-img.png')}}" alt="gambar" style="width: 500px;">
        </div>
    </div>

    <div class="other-title">
        <center>
            <h2>Sejarah</h2>
        </center> 
    </div>

    <div class="other">
        <div class="other-image">
            <img src="{{asset('landing_page/other-img.png')}}" alt="gambar" style="width: 500px;">
        </div>
        <div class="other-inner">
            <h2>Untuk memenuhi kebutuhan akan sumber daya manusia yang berkualitas tinggi dalam penguasaan IPTEK yang<br> didasari semangat iman dan taqwa, SMK Taruna Bhakti Depok dirancang untuk membekali siswa agar<br> menguasai ilmu pengetahuan khususnya dalam bidang Teknologi Informasi dan Komunikasi  yang berkualitas,<br> serta memiliki kecakapan hidup. Program pembelajaran SMK Taruna Bhakti  memberi perhatian khusus (ciri<br> khas) pada penguasaan TIK khususnya bidang Teknik Komputer dan Jaringan (TKJ), Multimedia (MM) serta<br> Rekaya Perangkat Lunak (RPL)  dengan menggunakan kurikulum Nasional yang secara inovatif diperkaya oleh<br> SMK Taruna Bhakti berdasarkan VISI, MISI, TUJUAN serta TARGET SMK Taruna Bhakti.<br>
                Selain pembelajaran di kelas (intrakurikuler) dan pengembangan bakat/minat melalui ekstrakurikuler, siswa<br> memperluas wawasan melalui berbagai macam program yang membekali siswa untuk memiliki kecakapan hidup<br> antara lain: Character Building, Science Camp, Mendatangkan Guru Tamu dari Dunai Usaha/Industri yang<br> relevan dll, serta memberi kesempatan luas kepada  siswa untuk berkompetisi dalam bidang akademis dan non-<br>akademis baik tingkat Nasional, Regional, dan Internasional.<br>
                Proses dan efektifitas pembelajaran didukung oleh guru yang kompeten, bimbingan dan konseling, serta sarana pendidikan yang lengkap.</h2>
        </div>
    </div>
</body>
</html>