// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:absensi_qr/constants/const.dart';
import 'package:absensi_qr/widgets/Guru/navbar_guru.dart';
import 'package:flutter/material.dart';

class DetailAbsenGuru extends StatefulWidget {
  const DetailAbsenGuru({Key? key}) : super(key: key);

  @override
  State<DetailAbsenGuru> createState() => _DetailAbsenGuruState();
}

class _DetailAbsenGuruState extends State<DetailAbsenGuru> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.06),
              child: Center(
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        child: Text(
                          "Judul Absensi 01",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              color: Color(kThirdColor),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Container(
                          height: size.height * 0.05,
                          width: size.width * 0.7,
                          decoration: BoxDecoration(
                              color: Color(kFourthColor),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              "PERTEMUAN 01",
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 15),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: size.width * 0.1, top: size.height * 0.04),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "Jadwal Pelajaran",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            color: Color(kThirdColor),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Container(
                        height: size.height * 0.05,
                        width: size.width * 0.7,
                        decoration: BoxDecoration(
                          color: Color(kFourthColor),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 10, top: 10),
                          child: Text(
                            "Bahasa Indonesia",
                            style:(
                              TextStyle(fontFamily: 'Poppins', fontSize: 15)

                            )
                                
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
                  left: size.width * 0.1, top: size.height * 0.01),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "Deskripsi",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            color: Color(kThirdColor),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Container(
                        height: size.height * 0.05,
                        width: size.width * 0.7,
                        decoration: BoxDecoration(
                          color: Color(kFourthColor),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 10, top: 10),
                          child: Text(
                            "Isi Pesan Atau Deskripsi",
                            style:
                                TextStyle(fontFamily: 'Poppins', fontSize: 15),
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
                  left: size.width * 0.1, top: size.height * 0.01),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "Nama Mapel",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            color: Color(kThirdColor),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Container(
                        height: size.height * 0.15,
                        width: size.width * 0.5,
                        decoration: BoxDecoration(
                          border: Border(
                                top: BorderSide(
                                    width: 5, color: Color(kFirstColor))),
                          color: Color(kFourthColor),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child: Text(
                                  "Senin",
                                  style: TextStyle(
                                      fontFamily: 'Poppins', fontSize: 15),
                                ),
                              ),
                              Container(
                                child: Text(
                                  "2 Februari 2021",
                                  style: TextStyle(
                                      fontFamily: 'Poppins', fontSize: 15),
                                ),
                              ),
                              Container(
                                child: Text(
                                  "08.30 - 10.30",
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 15,
                                      color: Color(kThirdColor)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.03),
              child: Center(
                child: Container(
                  height: size.height * 0.45,
                  width: size.width * 0.85,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(20),
                      color: Color(kFirstColor)),
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: size.height * 0.1,
                              width: size.width * 0.2,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/detailabsen.png"))),
                            ),
                            Container(
                              child: Text(
                                "TOTAL ABSENSI",
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: size.height * 0.02),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    height: size.height * 0.25,
                                    width: size.width * 0.35,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white),
                                    child: Center(
                                      child: Text(
                                        "15",
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 100,
                                            fontWeight: FontWeight.bold,
                                            color: Color(kRedColor)),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: size.height * 0.02),
                                    child: Container(
                                    child: Center(
                                      child: Text(
                                        "Terlambat",
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                            color: Color(kRedColor)),
                                      ),
                                    ),
                                ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: size.height * 0.25,
                                    width: size.width * 0.35,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white),
                                    child: Center(
                                      child: Text(
                                        "36",
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 100,
                                            fontWeight: FontWeight.bold,
                                            color: Color(kThirdColor)),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: size.height * 0.02),
                                    child: Container(
                                    child: Text(
                                      "Total",
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          color: Color(kThirdColor)),
                                    ),
                                ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
             Padding(
              padding: EdgeInsets.only(
                  top: size.height * 0.03, left: size.width * 0.08, bottom: size.height * 0.04),
              child: Container(
                height: size.height * 0.07,
                width: size.width * 0.3,
                decoration: BoxDecoration(color: Color(kFirstColor), borderRadius: BorderRadius.circular(20)),
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
                    "Back",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(kThirdColor),
                        fontFamily: 'Poppins'),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
