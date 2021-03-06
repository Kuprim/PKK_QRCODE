// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:absensi_qr/constants/const.dart';
import 'package:absensi_qr/pages/Guru/homeguru.dart';
import 'package:absensi_qr/widgets/Guru/form_input_jadwal.dart';
import 'package:absensi_qr/widgets/Guru/navbar_guru.dart';
import 'package:flutter/material.dart';

class InputJadwal extends StatefulWidget {
  const InputJadwal({Key? key}) : super(key: key);

  @override
  State<InputJadwal> createState() => _InputJadwalState();
}

final TextEditingController judulcontroller = TextEditingController();
final TextEditingController namacontroller = TextEditingController();
final TextEditingController jadwalcontroller = TextEditingController();
final TextEditingController jamcontroller = TextEditingController();
final TextEditingController deskripsicontroller = TextEditingController();

class _InputJadwalState extends State<InputJadwal> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: size.height * 0.06,
                  left: size.width * 0.1,
                  bottom: size.height * 0.03),
              child: Container(
                height: size.height * 0.06,
                width: size.width * 0.25,
                decoration: BoxDecoration(
                    color: Color(kThirdColor),
                    borderRadius: BorderRadius.circular(20)),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (c) => NavbarGuru(),
                      ),
                    );
                  },
                  child: Text(
                    "< Back",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'Poppins'),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.05),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Text(
                        "Buat Absen",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color(kThirdColor),
                            fontFamily: 'Poppins'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Container(
                width: size.width * 0.7,
                height: size.height * 0.3,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/jadwal.png"),
                      fit: BoxFit.fill),
                ),
              ),
            ),
            Center(
              child: Container(
                width: size.width * 0.9,
                height: size.height * 0.8,
                child: FormJadwalGuru(
                  judulcontroller: judulcontroller,
                  namacontroller: namacontroller,
                  jadwalcontroller: jadwalcontroller,
                  jamcontroller: jamcontroller,
                  deskripsicontroller: deskripsicontroller,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
