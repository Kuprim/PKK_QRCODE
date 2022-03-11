// ignore_for_file: prefer_const_constructors

import 'package:absensi_qr/widgets/Guru/card_riwayat_guru.dart';
import 'package:flutter/material.dart';

class IsiRiwayatGuru extends StatelessWidget {
  const IsiRiwayatGuru({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          CardRiwayatGuru(
              gambar: "assets/images/attendance.png",
              judul: "Judul Absensi 01",
              matapelajaran: "Mata Pelajaran",
              totalAbsen: "Total absensi = 36",
              jam: "01.00 - 02.00",
              hari: "Senin",
              tanggal: "02/02/2022"),
          CardRiwayatGuru(
              gambar: "assets/images/attendance.png",
              judul: "Judul Absensi 02",
              matapelajaran: "Mata Pelajaran",
              totalAbsen: "Total absensi = 36",
              jam: "01.00 - 02.00",
              hari: "Senin",
              tanggal: "02/02/2022"),
          CardRiwayatGuru(
              gambar: "assets/images/attendance.png",
              judul: "Judul Absensi 03",
              matapelajaran: "Mata Pelajaran",
              totalAbsen: "Total absensi = 36",
              jam: "01.00 - 02.00",
              hari: "Senin",
              tanggal: "02/02/2022")
        ],
      ),
    );
  }
}
