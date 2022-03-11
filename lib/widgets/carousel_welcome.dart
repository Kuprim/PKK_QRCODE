// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:absensi_qr/constants/const.dart';
import 'package:absensi_qr/pages/login.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarouselWelcome extends StatefulWidget {
  const CarouselWelcome({Key? key}) : super(key: key);

  @override
  _CarouselWelcomeState createState() => _CarouselWelcomeState();
}

class _CarouselWelcomeState extends State<CarouselWelcome> {
  final List<Widget> image = [
    Container(
        height: 100,
        width: 300,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/welcome.png'),
              fit: BoxFit.cover),
        )),
    Container(
        height: 100,
        width: 300,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/welcome.png'),
              fit: BoxFit.cover),
        )),
    Container(
        height: 100,
        width: 300,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/welcome.png'),
              fit: BoxFit.cover),
        ))
  ];
  final _urlImages = [
    'assets/images/qrsmk.png',
    'assets/images/qrsmk.png',
    'assets/images/qrsmk.png',
  ];
  final CarouselController _controller = CarouselController();

  int _current = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column( children: [
        Padding(
          padding: EdgeInsets.only(bottom: size.height * 0),
          child: Container(
              decoration: BoxDecoration(
                  color: Color(kThirdColor),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(70),
                      bottomLeft: Radius.circular(70))),
              width: size.width * 1,
              height: size.height * 0.8,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: size.height * 0.1, bottom: size.height * 0.0),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(bottom: size.height * 0.05),
                        child: Container(
                          child: Text(
                            "Welcome to nGabsen",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: CarouselSlider(
                      items: image,
                      carouselController: _controller,
                      options: CarouselOptions(
                          viewportFraction: 1,
                          enableInfiniteScroll: false,
                          autoPlay: true,
                          enlargeCenterPage: true,
                          aspectRatio: 1.0,
                          onPageChanged: (index, reason) {
                            setState(() {
                              _current = index;
                            });
                          }),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: image.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () => _controller.animateToPage(entry.key),
                        child: Padding(
                          padding: EdgeInsets.only(top: size.height * 0.07),
                          child: Container(
                            width: 20.0,
                            height: 6.0,
                            margin: EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 4.0),
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: (Theme.of(context).brightness ==
                                            Brightness.dark
                                        ? Colors.black
                                        : Colors.white)
                                    .withOpacity(
                                        _current == entry.key ? 0.9 : 0.4)),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              )),
        ),
        Padding(
          padding:
              EdgeInsets.only(left: size.width * 0.05, top: size.height * 0.02),
          child: Container(
            child: Center(
              child: Text(
                "Mempermudah kita semua dalam absensi\nsetiap harinyaa",
                style: TextStyle(fontFamily: 'Poppins', fontSize: 18),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: size.height * 0.04),
          child: Container(
            height: size.height * 0.06,
            width: size.width * 0.5,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(kSecondColor)),
            child: TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (c) => Login(),
                  ),
                );
              },
              child: Text(
                "Get Started  >",
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ),
        )
      ]),
    );
  }
}

/*@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Image slider demo')),
      body: Container(
          child: CarouselSlider(
        options: CarouselOptions(),
        items: image
      )),
    );
  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          Container(
            height: size.height * 1,
            color: Colors.yellow,
            child: CarouselSlider.builder(
              options: CarouselOptions(
                autoPlay: true,
                enableInfiniteScroll: false,
              ),
              itemCount: _urlImages.length,
              itemBuilder: (context, index, realIndex) {
                return Container(
                  
                  child: Container(
                    child: Image(
                      image: AssetImage(_urlImages[index]),
                      fit: BoxFit.fill,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }*/
