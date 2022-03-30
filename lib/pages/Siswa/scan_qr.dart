// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:absensi_qr/constants/const.dart';
import 'package:absensi_qr/pages/Siswa/confirmasipage.dart';
import 'package:absensi_qr/widgets/Siswa/navbar_siswa.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ScanQr extends StatefulWidget {
  const ScanQr({Key? key}) : super(key: key);

  @override
  _ScanQrState createState() => _ScanQrState();
}

final imagePicker = ImagePicker();

//open camera
Future getImage() async {
  final image = await imagePicker.getImage(source: ImageSource.camera);
}

class _ScanQrState extends State<ScanQr> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (c) => NavbarQr(),
                    ),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: size.height * 0.0,
                          bottom: size.height * 0.1,
                          left: size.width * 0.05),
                      child: Container(
                        height: size.height * 0.06,
                        width: size.width * 0.13,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(kSecondColor),
                        ),
                        child: Image(
                          image: AssetImage("assets/images/back.png"),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: size.height * 0.25, right: size.width * 0.215),
                child: Container(
                  alignment: Alignment(0, 0),
                  height: size.height * 0.06,
                  width: size.width * 0.55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(kThirdColor)),
                  child: Text(
                    "Scan QR Code",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: size.height * 0.05),
                child: GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (c) => ConfirmasiPage(),
                    //   ),
                    // );
                    getImage();
                  },
                  child: Image(
                    image: AssetImage("assets/images/qrcode.png"),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
