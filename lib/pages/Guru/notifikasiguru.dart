import 'package:absensi_qr/constants/const.dart';
import 'package:absensi_qr/dummy/isi_riwayat_siswa.dart';
import 'package:absensi_qr/widgets/card_notifikasi.dart';
import 'package:flutter/material.dart';

class NotifikasiGuru extends StatefulWidget {
  const NotifikasiGuru({Key? key}) : super(key: key);

  @override
  _NotifikasiGuruState createState() => _NotifikasiGuruState();
}

class _NotifikasiGuruState extends State<NotifikasiGuru> {
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
                        top: size.height * 0.05, left: size.width * 0.11),
                    child: Container(
                      width: size.width * 0.4,
                      height: size.height * 0.2,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/notifikasi.png"),
                            fit: BoxFit.fill),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: size.width * 0.02,
                      top: size.height * 0.04),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: const Text(
                            "Notifikasi",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: size.height * 0.65,
              width: size.width * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(kFourthColor),
              ),
              child: CardNotifikasi(),
            )
          ],
        ),
      ),
    );
  }
}
