import 'package:absensi_qr/constants/const.dart';
import 'package:absensi_qr/dummy/isi_riwayat_siswa.dart';
import 'package:absensi_qr/widgets/Siswa/card_riwayat.dart';
import 'package:flutter/material.dart';

class RiwayatAbsenSiswa extends StatefulWidget {
  const RiwayatAbsenSiswa({Key? key}) : super(key: key);

  @override
  _RiwayatAbsenSiswaState createState() => _RiwayatAbsenSiswaState();
}

class _RiwayatAbsenSiswaState extends State<RiwayatAbsenSiswa> {
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
                        top: size.height * 0.05, left: size.width * 0.03),
                    child: Container(
                      width: size.width * 0.4,
                      height: size.height * 0.2,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/riwayat.png"),
                            fit: BoxFit.fill),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.03),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: const Text(
                            "Riwayat Aktivitas ",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                        Container(
                          child: const Text(
                            "Absensi",
                            style: TextStyle(
                                fontSize: 25,
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
            Padding(
              padding: EdgeInsets.only(top : size.height * 0.03),
              child: Container(
                height: size.height * 0.6,
                width: size.width * 0.85,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(kFourthColor),
                ),
                child: IsiRiwayatSiswa(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
