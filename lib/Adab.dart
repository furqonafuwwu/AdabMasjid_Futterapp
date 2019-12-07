import 'package:flutter/material.dart';

class TampilHalaman extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Adab Di Masjid"),
      ), //AppBar

      body: PageView(
        children: <Widget>[
          _createPageItemUI(
              '1.Masuk dengan kaki kanan dan keluar dengan kaki kiri',
              'http://1.bp.blogspot.com/-HSoKDGk__zw/VPArKuisG-I/AAAAAAAAAE0/b6UIgE3FNEE/s1600/d8a2d8afd8a7d8a8-d8afd8aed988d984-d8a7d984d985d8b3d8acd8af.jpg',
              'Ketika masuk masjid kita harus masuk dengan kaki kanan dan keluar dengan kaki kiri sebagaimana perkataan Anas -radhiyallahu’anhu- riwayat Al-Hakim dan disetujui oleh Adz-Dzahabi “Termasuk ajaran Nabi shallallahu ‘alaihi wa sallam ketika anda masuk masjid, Anda mendahulukan kaki kanan dan ketika keluar Anda mendahulukan kaki kiri.'),
          _createPageItemUI(
              '2.Berdoa ketika masuk masjid dan ketika keluar masjid',
              'https://4.bp.blogspot.com/-9Dy2btMJXvw/VokfliPS1pI/AAAAAAAAARc/wyDEUymkWpc/s1600/Doa%2BMasuk%2Bdan%2BKeluar%2BMesjid.jpg',
              'Saat kita ingin masuk ke dalam masjid kita harus membaca doa sebelum masuk yaitu : اللَّهُمَّ افْتَحْ لِي أَبْوَابَ رَحْمَتِكَ Artinya : Ya Allah, buka-kanlah pintu rahmatmu untukku dan juga jangan lupa untuk doa ketika keluar masjid.'),
          _createPageItemUI(
              '3.Berpakaian Indah Ketika Hendak Menuju Masjid',
              'https://1.bp.blogspot.com/-JtgolD8ATYk/WS7b6RKv_wI/AAAAAAAAAIw/6_Hj7zz8V80jmHLmqZMT51yBWhUzLCogQCLcB/s1600/akukhb.jpg',
              'Sebagaimana perintah Allah Ta’ala dalam firman-Nya: “Hai anak Adam, pakailah pakaianmu yang indah setiap (memasuki) masjid”, Syaikhul Islam Ibnu Taimiyyah rahimahullah berkata, “dalam ayat ini, Allah tidak hanya memerintahkan hambanya untuk menutup aurat, akan tetapi mereka diperintahkan pula untuk memakai perhiasan. Oleh karena itu hendaklah mereka memakai pakaian yang paling bagus ketika shalat”, Dan dijelaskan dalam kitab tafsir karangan Imam Ibnu Katsir rahimahullah, “berlandaskan ayat ini dan ayat yang semisalnya disunahkan berhias ketika akan shalat, lebih-lebih ketika hari Jumat dan hari raya. Termasuk perhiasan yaitu siwak dan parfum”.'),
          _createPageItemUI(
              '4.Shalat tahiyatul masjid',
              'http://maltawinds.com/wp-content/uploads/2017/03/did-religion-islam-begin_6a4fa974a1563d3b_LeCvPLI3T_eFVcAD7jF3ng.jpg',
              'jika memungkinkan dan shalat sunnah atau fardhu bisa mewakilinya, sebagaimana hadits Abu Qatadah yang Muttafaqun ‘alaihi, Rasulullah ﷺ bersabda " Apabila kalian masuk masjid, jangan duduk, sampai shalat dua rakaat.”, Sunnah ini tidak gugur walaupun lama berdiri dalam masjid misalnya menjawab adzan, adapun jika sempat duduk maka gugur jika sengaja dan tidak gugur jika lupa.'),
          _createPageItemUI(
              '5.Menjaga kebersihan masjid',
              'https://4.bp.blogspot.com/-2Uc_eg3wWo0/W3BNxTuj1KI/AAAAAAAAA-g/sawSqN-qFUwI9ZQbP46edn14RllK0PnygCLcBGAs/s1600/Poster%2Bmenjaga%2Bkebersihan%2Bmasjid.png',
              'sebagaimana hadits Aisyah -radhiyallahu’anha- riwayat At-Tirmidzi dengan sanad yang Shahih : أَمَرَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ بِبِنَاءِ المَسَاجِدِ فِي الدُّورِ، وَأَنْ تُنَظَّفَ، وَتُطَيَّبَ, “Rasulullah shallallahu ‘alaihi wa sallam memerintahkan membangun masjid di perkampungan, juga menjaga kebersihan dan memberikannya wewangian” Sumber dari: https://wahdah.or.id/adab-di-dalam-masjid".'),
        ],
      ), //PageView
    ); //Sccafold
  }
}

_createPageItemUI(String nama, String gambar, String deskripsi) {
  return Container(
    child: ListView(
      children: <Widget>[
        Image(
          image: NetworkImage(gambar),
          height: 300.0,
          fit: BoxFit.cover,
        ),

        SizedBox(
          height: 20.0,
        ), //SizedBox

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(nama,
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
        ), //Padding

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            deskripsi,
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.justify,
          ),
        )
      ],
    ),
  );
}
