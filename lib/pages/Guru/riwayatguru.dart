import 'package:absensi_qr/constants/const.dart';
import 'package:absensi_qr/dummy/isi_riwayat_guru.dart';
import 'package:absensi_qr/dummy/isi_riwayat_siswa.dart';
import 'package:absensi_qr/widgets/Siswa/card_riwayat.dart';
import 'package:flutter/material.dart';

class RiwayatAbsenGuru extends StatefulWidget {
  const RiwayatAbsenGuru({Key? key}) : super(key: key);

  @override
  _RiwayatAbsenGuruState createState() => _RiwayatAbsenGuruState();
}

class _RiwayatAbsenGuruState extends State<RiwayatAbsenGuru> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: size.height * 0.05, left: size.width * 0.05),
                    child: Container(
                      width: size.width * 0.4,
                      height: size.height * 0.2,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/Group 26.png"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: size.width * 0.03,
                      top: size.height * 0.04),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: const Text(
                            "Riwayat Jadwal ",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: size.width * 0.1),
                          child: Container(
                            child: const Text(
                              "Absensi",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.03),
              child: Container(
                height: size.height * 0.6,
                width: size.width * 0.85,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(kFirstColor),
                ),
                child: IsiRiwayatGuru(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
