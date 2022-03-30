// ignore_for_file: prefer_const_constructors

import 'package:absensi_qr/constants/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardNotifikasi extends StatefulWidget {
  const CardNotifikasi({Key? key}) : super(key: key);

  @override
  _CardNotifikasiState createState() => _CardNotifikasiState();
}

class _CardNotifikasiState extends State<CardNotifikasi> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.03),
              child: Container(
                height: size.height * 0.17,
                width: size.width * 0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(kFirstColor)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 10),
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage("assets/images/bell.png"),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 15,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: size.width * 0.01),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text("Senin",
                                    style: TextStyle(
                                      fontSize: 16,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w700,
                                        color: Color(kThirdColor))),
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text("02/00/2001",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700
                                  ),
                                  ),
                                  
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10, bottom: 10),
                              child: Text(
                                "Judul Notifikasi",
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20),
                              ),
                            ),
                            Text(
                              "Teks isi semua informasi yang\nada dalam notifikasi",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: size.width * 0.07),
                      child: Container(
                        height: size.height * 0.3,
                        width: size.width * 0.2,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/tongsampah.png"),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.03),
              child: Container(
                height: size.height * 0.17,
                width: size.width * 0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(kFourthColor)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 10),
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(kFifthColor)
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 15,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: size.width * 0.01),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text("Senin",
                                    style: TextStyle(
                                      fontSize: 16,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w700,
                                        color: Color(kThirdColor))),
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text("02/00/2001",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700
                                  ),
                                  ),
                                  
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10, bottom: 10),
                              child: Text(
                                "Judul Notifikasi",
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20),
                              ),
                            ),
                            Text(
                              "Teks isi semua informasi yang\nada dalam notifikasi",
                              style: TextStyle(
                                color: Color(kThirdColor),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: size.width * 0.07),
                      child: Container(
                        height: size.height * 0.3,
                        width: size.width * 0.2,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/tongsampah.png"),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.03),
              child: Container(
                height: size.height * 0.17,
                width: size.width * 0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(kFourthColor)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 10),
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(kFifthColor)
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 15,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: size.width * 0.01),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text("Senin",
                                    style: TextStyle(
                                      fontSize: 16,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w700,
                                        color: Color(kThirdColor))),
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text("02/00/2001",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700
                                  ),
                                  ),
                                  
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10, bottom: 10),
                              child: Text(
                                "Judul Notifikasi",
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20),
                              ),
                            ),
                            Text(
                              "Teks isi semua informasi yang\nada dalam notifikasi",
                              style: TextStyle(
                                color: Color(kThirdColor),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: size.width * 0.07),
                      child: Container(
                        height: size.height * 0.3,
                        width: size.width * 0.2,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/tongsampah.png"),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
