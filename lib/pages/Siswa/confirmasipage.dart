// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:absensi_qr/constants/const.dart';
import 'package:absensi_qr/pages/Siswa/scan_qr.dart';
import 'package:absensi_qr/widgets/Siswa/navbar_siswa.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConfirmasiPage extends StatefulWidget {
  const ConfirmasiPage({Key? key}) : super(key: key);

  @override
  _ConfirmasiPageState createState() => _ConfirmasiPageState();
}

class _ConfirmasiPageState extends State<ConfirmasiPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              color: Color(kFirstColor),
            ),
            Padding(
              padding: EdgeInsets.only(
                  right: size.width * 0.78, bottom: size.height * 0.85),
              child: Container(
                alignment: Alignment(1, 1),
                height: size.height * 0.05,
                width: size.width * 0.13,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(kThirdColor)),
                child: TextButton(
                    onPressed: () {
                      Get.off(NavbarQr());
                    },
                    child: Text(
                      "<",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            ),
            
            Padding(
              padding: EdgeInsets.only(bottom: size.height * 0.4),
              child: Container(
                  alignment: Alignment(0, -0.5),
                  width: size.width * 0.8,
                  height: size.height * 0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    color: Color(kFourthColor),
                  ),
                  child: Text(
                    "KONFIRMASI ABSENSI",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(kThirdColor),
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.25),
              child: Container(
                width: size.width * 0.8,
                height: size.height * 0.6,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: size.height * 0.01),
                      child: Container(
                        height: size.height * 0.04,
                        width: size.width * 0.75,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: size.width * 0.075,
                              top: size.height * 0.01),
                          child: Text(
                            "NAMA",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(kThirdColor),
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: size.height * 0.005),
                      child: Container(
                        color: Color(kFourthColor),
                        height: size.height * 0.03,
                        width: size.width * 0.6,
                        child: Padding(
                          padding: EdgeInsets.only(top: 3, left: 10),
                          child: Text(
                            "Andika Cakra Langit",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: size.height * 0.01),
                      child: Container(
                        height: size.height * 0.04,
                        width: size.width * 0.75,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: size.width * 0.075,
                              top: size.height * 0.01),
                          child: Text(
                            "KELAS",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(kThirdColor),
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: size.height * 0.005),
                      child: Container(
                        color: Color(kFourthColor),
                        height: size.height * 0.03,
                        width: size.width * 0.6,
                        child: Padding(
                          padding: EdgeInsets.only(top: 3, left: 10),
                          child: Text(
                            "XII RPL A",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: size.height * 0.01),
                      child: Container(
                        height: size.height * 0.04,
                        width: size.width * 0.75,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: size.width * 0.075,
                              top: size.height * 0.01),
                          child: Text(
                            "MATA PELAJARAN",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(kThirdColor),
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: size.height * 0.005),
                      child: Container(
                        color: Color(kFourthColor),
                        height: size.height * 0.03,
                        width: size.width * 0.6,
                        child: Padding(
                          padding: EdgeInsets.only(top: 3, left: 10),
                          child: Text(
                            "BAHASA KEJAWEN",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: size.height * 0.01),
                      child: Container(
                        height: size.height * 0.04,
                        width: size.width * 0.75,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: size.width * 0.075,
                              top: size.height * 0.01),
                          child: Text(
                            "GURU PENGAJAR",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(kThirdColor),
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: size.height * 0.005),
                      child: Container(
                        color: Color(kFourthColor),
                        height: size.height * 0.03,
                        width: size.width * 0.6,
                        child: Padding(
                          padding: EdgeInsets.only(top: 3, left: 10),
                          child: Text(
                            "Dewi Rahayu S.pd",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: size.height * 0.01),
                      child: Container(
                        height: size.height * 0.04,
                        width: size.width * 0.75,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: size.width * 0.075,
                              top: size.height * 0.01),
                          child: Text(
                            "JADWAL PENGARAN & DESKRIPSI",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(kThirdColor),
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: size.height * 0.005),
                      child: Container(
                        color: Color(kFourthColor),
                        height: size.height * 0.03,
                        width: size.width * 0.6,
                        child: Padding(
                          padding: EdgeInsets.only(top: 3, left: 10),
                          child: Text(
                            "Andika Cakra Langit",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: size.height * 0.03),
                      child: Container(
                        height: size.height * 0.06,
                        width: size.width * 0.6,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color(kThirdColor)),
                        child: TextButton(
                          onPressed: () {
                            Get.off(NavbarQr());
                          },
                          child: Text(
                            "Kirim",
                            style: TextStyle(fontSize: 24, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: size.width *0.43,
                bottom: size.height * 0.7),
              child: Container(
                width: size.width * 0.3,
                height: size.height * 0.15,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/done 1.png"),
                      fit: BoxFit.fill),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
