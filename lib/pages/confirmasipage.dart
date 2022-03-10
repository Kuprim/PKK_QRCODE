// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:absensi_qr/constants/const.dart';
import 'package:absensi_qr/pages/scan_qr.dart';
import 'package:absensi_qr/widgets/navbar.dart';
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
              color: Color(kSecondColor),
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
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: size.height * 0.2),
                  child: Container(
                      alignment: Alignment(0, 0),
                      width: size.width * 0.8,
                      height: size.height * 0.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        color: Colors.white,
                      ),
                      child: Text(
                        "hgfdsa",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      )),
                ),
                Container(
                    alignment: Alignment(0, 0),
                    width: size.width * 0.8,
                    height: size.height * 0.2,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10)),
                    ),
                    child: Text(
                      "hgfdsa",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    )),
              ],
            ),

            // Padding(padding:
            // EdgeInsets.only()
            // )
          ],
        ),
      ),
    );
  }
}
