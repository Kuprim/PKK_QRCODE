// ignore_for_file: prefer_const_constructors

import 'package:absensi_qr/constants/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormJadwalGuru extends StatefulWidget {
  const FormJadwalGuru({Key? key}) : super(key: key);

  @override
  State<FormJadwalGuru> createState() => _FormJadwalGuruState();
}

class _FormJadwalGuruState extends State<FormJadwalGuru> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9,
      height: size.height * 0.7,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Color(kFourthColor)),
      child: Form(
        child: Padding(
          padding:
              EdgeInsets.only(left: size.width * 0.1, top: size.height * 0.03),
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
                padding: EdgeInsets.only(top: size.height * 0.025),
                child: Container(
                  height: size.height * 0.06,
                  width: size.width * 0.7,
                  child: TextFormField(
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
                padding: EdgeInsets.only(top: size.height * 0.055),
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
                padding: EdgeInsets.only(top: size.height * 0.025),
                child: Container(
                  height: size.height * 0.06,
                  width: size.width * 0.7,
                  child: TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "BAHASA INDONESIA",
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: size.height * 0.055),
                child: Container(
                  child: Text(
                    "Jam Pelajaran",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins'),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: size.height * 0.025),
                child: Container(
                  height: size.height * 0.06,
                  width: size.width * 0.7,
                  child: TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "08.30 - 10.30",
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: size.height * 0.055),
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
                padding: EdgeInsets.only(top: size.height * 0.025),
                child: Container(
                  height: size.height * 0.06,
                  width: size.width * 0.7,
                  child: TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Isi Pesan Atau Deskripsi",
                    ),
                  ),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
