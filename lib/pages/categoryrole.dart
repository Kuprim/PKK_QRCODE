// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:absensi_qr/constants/const.dart';
import 'package:absensi_qr/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryRole extends StatefulWidget {
  const CategoryRole({Key? key}) : super(key: key);

  @override
  _CategoryRoleState createState() => _CategoryRoleState();
}

class _CategoryRoleState extends State<CategoryRole> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              color: Color(kThirdColor),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.1),
                    child: Container(
                      height: size.height * 0.8,
                      width: size.width * 1,
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: size.width * 0.15, top: size.height * 0.01),
                          child: Text(
                            "SILAHKAN PILIH KATEGORI",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => {
                Get.off(Login())
              } ,
              child: Padding(
                padding: EdgeInsets.only(
                    left: size.width * 0.0, bottom: size.height * 0.25),
                child: Container(
                  height: size.height * 0.4,
                  width: size.width * 0.75,
                  child: Image(
                    image: AssetImage("assets/images/kategorimurid.png"),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => {
                Get.off(Login())
              },
              child: Padding(
                padding: EdgeInsets.only(
                    left: size.width * 0.0, top: size.height * 0.5),
                child: Container(
                  height: size.height * 0.4,
                  width: size.width * 0.75,
                  child: Image(
                    image: AssetImage("assets/images/kategoriguru.png"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
