import 'package:absensi_qr/constants/const.dart';
import 'package:absensi_qr/pages/Guru/homeguru.dart';
import 'package:absensi_qr/pages/Guru/notifikasiguru.dart';
import 'package:absensi_qr/pages/Guru/riwayatguru.dart';
import 'package:absensi_qr/pages/Guru/riwayatguru.dart';
import 'package:absensi_qr/pages/Siswa/home.dart';
import 'package:absensi_qr/pages/Siswa/notifikasisiswa.dart';
import 'package:absensi_qr/pages/Siswa/riwayatsiswa.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavbarGuru extends StatefulWidget {
  const NavbarGuru({ Key? key }) : super(key: key);

  @override
  _NavbarGuruState createState() => _NavbarGuruState();
}

class _NavbarGuruState extends State<NavbarGuru> {

  int currentIndex = 1;
  final screens = [
    RiwayatAbsenGuru(),
    HomeGuru(),
    NotifikasiGuru()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(kFirstColor),
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.text_badge_checkmark), label: "Riwayat"),
          const BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: "Beranda"),
          const BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.bell), label: "Notifikasi"),
        ],
      ),
    );
  }
}