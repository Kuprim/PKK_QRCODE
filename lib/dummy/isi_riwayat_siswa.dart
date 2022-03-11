// ignore_for_file: prefer_const_constructors

import 'package:absensi_qr/widgets/Siswa/card_riwayat.dart';
import 'package:flutter/material.dart';

class IsiRiwayatSiswa extends StatelessWidget {
  const IsiRiwayatSiswa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          CardRiwayatSiswa(
              gambar: "assets/images/done 1.png",
              kelas: "Kelas",
              matapelajaran: "Mata Pelajaran",
              jam: "01.00 - 02.00",
              hari: "Senin",
              tanggal: "02/02/2022"),
          CardRiwayatSiswa(
              gambar: "assets/images/done 1.png",
              kelas: "Kelas",
              matapelajaran: "Mata Pelajaran",
              jam: "01.00 - 02.00",
              hari: "Senin",
              tanggal: "02/02/2022"),
          CardRiwayatSiswa(
              gambar: "assets/images/done 1.png",
              kelas: "Kelas",
              matapelajaran: "Mata Pelajaran",
              jam: "01.00 - 02.00",
              hari: "Senin",
              tanggal: "02/02/2022")
        ],
      ),
    );
  }
}
