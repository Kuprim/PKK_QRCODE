// ignore_for_file: prefer_const_constructors

import 'package:absensi_qr/constants/const.dart';
import 'package:absensi_qr/pages/Guru/generatedqr.dart';
import 'package:absensi_qr/pages/Guru/inputjadwal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormJadwalGuru extends StatefulWidget {
  const FormJadwalGuru({
    key,
    required this.judulcontroller,
    required this.namacontroller,
    required this.jadwalcontroller,
    required this.jamcontroller,
    required this.deskripsicontroller,
  }) : super(key: key);

  final TextEditingController judulcontroller;
  final TextEditingController namacontroller;
  final TextEditingController jadwalcontroller;
  final TextEditingController jamcontroller;
  final TextEditingController deskripsicontroller;

  @override
  State<FormJadwalGuru> createState() => _FormJadwalGuruState();
}

final _formKey = GlobalKey<FormState>();

class _FormJadwalGuruState extends State<FormJadwalGuru> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: size.width * 0.9,
          height: size.height * 0.7,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(kFourthColor)),
          child: Form(
            key: _formKey,
            child: Padding(
              padding: EdgeInsets.only(
                  left: size.width * 0.1, top: size.height * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "Judul Absensi",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.01),
                    child: Container(
                      height: size.height * 0.04,
                      width: size.width * 0.7,
                      child: TextFormField(
                        controller: judulcontroller,
                        textAlign: TextAlign.left,
                        textAlignVertical: TextAlignVertical.bottom,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: "PERTEMUAN 1",
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.015),
                    child: Container(
                      child: Text(
                        "Nama Mapel",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.01),
                    child: Container(
                      height: size.height * 0.04,
                      width: size.width * 0.7,
                      child: TextFormField(
                        controller: namacontroller,
                        textAlign: TextAlign.left,
                        textAlignVertical: TextAlignVertical.bottom,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: "Bahasa Indonesia",
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.015),
                    child: Container(
                      child: Text(
                        "Jadwal Pelajaran",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.01),
                    child: Container(
                      height: size.height * 0.04,
                      width: size.width * 0.7,
                      child: TextFormField(
                        controller: jadwalcontroller,
                        textAlign: TextAlign.left,
                        textAlignVertical: TextAlignVertical.bottom,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: "Senin, 08 Maret 2022",
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.015),
                    child: Container(
                      child: Text(
                        "Jam Absensi",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.01),
                    child: Container(
                      height: size.height * 0.04,
                      width: size.width * 0.7,
                      child: TextFormField(
                        controller: jamcontroller,
                        textAlign: TextAlign.left,
                        textAlignVertical: TextAlignVertical.bottom,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: "04.20 - 10.00",
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.015),
                    child: Container(
                      child: Text(
                        "Deskripsi",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.01),
                    child: Container(
                      height: size.height * 0.04,
                      width: size.width * 0.7,
                      child: TextFormField(
                        controller: deskripsicontroller,
                        textAlign: TextAlign.left,
                        textAlignVertical: TextAlignVertical.bottom,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: "Isi pesan atau deskripsi",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: size.height * 0.02),
          child: Container(
            height: size.height * 0.06,
            width: size.width * 0.9,
            decoration: BoxDecoration(color: Color(kThirdColor)),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (c) => GeneratedQr(
                        judulcontroller.text,
                        namacontroller.text,
                        jadwalcontroller.text,
                        jamcontroller.text,
                        deskripsicontroller.text),
                  ),
                );
              },
              child: Text(
                "Simpan",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'Poppins'),
              ),
            ),
          ),
        )
      ],
    );
  }
}
