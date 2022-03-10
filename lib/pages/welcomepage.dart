import 'package:absensi_qr/constants/const.dart';
import 'package:absensi_qr/widgets/carousel_welcome.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
                width: size.width * 1,
                height: size.height * 1,
                color: Colors.blue,
                child: CarouselWelcome()),
          ],
        ),
      ),
    );
  }
}
