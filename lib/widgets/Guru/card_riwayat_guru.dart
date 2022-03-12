// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:absensi_qr/constants/const.dart';
import 'package:flutter/material.dart';

class CardRiwayatGuru extends StatefulWidget {
  const CardRiwayatGuru(
      {Key? key,
      required this.gambar,
      required this.judul,
      required this.matapelajaran,
      required this.jam,
      required this.hari,
      required this.tanggal,
      required this.totalAbsen})
      : super(key: key);

  final String gambar, judul, matapelajaran, jam, hari, tanggal, totalAbsen;

  @override
  _CardRiwayatGuruState createState() => _CardRiwayatGuruState();
}

class _CardRiwayatGuruState extends State<CardRiwayatGuru> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: size.height * 0.04),
            child: Container(
              height: size.height * 0.15,
              width: size.width * 0.8,
              decoration: const BoxDecoration(),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: size.width * 0.01),
                      child: Container(
                        height: size.height * 0.1,
                        width:size.width * 0.1 ,
                        child: Image(
                          image: AssetImage(widget.gambar),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            widget.judul,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            widget.matapelajaran,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            widget.totalAbsen,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: size.width * 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            widget.hari,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                              color: Color(kThirdColor),
                            ),
                          ),
                          Text(
                            widget.jam,
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                                color: Color(kThirdColor)),
                          ),
                          
                          Text(
                            widget.tanggal,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                              color: Color(kThirdColor),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
