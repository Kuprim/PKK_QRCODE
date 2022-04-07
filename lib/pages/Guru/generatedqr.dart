// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:absensi_qr/constants/const.dart';
import 'package:absensi_qr/pages/Guru/inputjadwal.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GeneratedQr extends StatefulWidget {
  final judul;
  final nama;
  final jadwal;
  final jam;
  final deskripsi;
  // ignore: use_key_in_widget_constructors
  const GeneratedQr(
      this.judul, this.nama, this.jadwal, this.jam, this.deskripsi);

  @override
  State<GeneratedQr> createState() => _GeneratedQrState();
}

class _GeneratedQrState extends State<GeneratedQr> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 100),
              child: Center(
                child: Container(
                  child: QrImage(
                    data: widget.judul +
                        " " +
                        widget.nama +
                        " " +
                        widget.jadwal +
                        " " +
                        widget.jam +
                        " " +
                        widget.deskripsi,
                    version: QrVersions.auto,
                    size: 250,
                    gapless: false,
                  ),
                ),
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.only(
            //       top: size.height * 0.06,
            //       left: size.width * 0,
            //       bottom: size.height * 0.01),
            //   child: Container(
            //     height: size.height * 0.06,
            //     width: size.width * 0.25,
            //     decoration: BoxDecoration(
            //         color: Color(kThirdColor),
            //         borderRadius: BorderRadius.circular(20)),
            //     child: TextButton(
            //       onPressed: () {
            //         Navigator.pushReplacement(
            //           context,
            //           MaterialPageRoute(
            //             builder: (c) => InputJadwal(),
            //           ),
            //         );
            //       },
            //       child: Text(
            //         "< Back",
            //         style: TextStyle(
            //             fontSize: 20,
            //             fontWeight: FontWeight.bold,
            //             color: Colors.white,
            //             fontFamily: 'Poppins'),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
