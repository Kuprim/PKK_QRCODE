// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:absensi_qr/constants/const.dart';
import 'package:absensi_qr/pages/Guru/detailabsenguru.dart';
import 'package:flutter/material.dart';

class ListAbsenGuru extends StatefulWidget {
  const ListAbsenGuru({Key? key}) : super(key: key);

  @override
  State<ListAbsenGuru> createState() => _ListAbsenGuruState();
}

class _ListAbsenGuruState extends State<ListAbsenGuru> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (c) => DetailAbsenGuru(),
                ),
              );
            },
            child: Container(
              height: size.height * 0.07,
              width: size.width * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(kFourthColor),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: size.height * 0.05,
                    width: size.width * 0.1,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/attendance.png"),
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Judul Absen 01",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: Text(
                      ">",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: size.height * 0.04, bottom: size.height * 0.07),
            child: Container(
              height: size.height * 0.07,
              width: size.width * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(kFirstColor),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: size.height * 0.05,
                    width: size.width * 0.1,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/attendance.png"),
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Judul Absen 01",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: Text(
                      ">",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
