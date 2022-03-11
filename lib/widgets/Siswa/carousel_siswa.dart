// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:absensi_qr/constants/const.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarouselHome extends StatefulWidget {
  const CarouselHome({Key? key}) : super(key: key);

  @override
  _CarouselHomeState createState() => _CarouselHomeState();
}

class _CarouselHomeState extends State<CarouselHome> {
  int _current = 0;
  final List<Widget> image = [
    Container(
        height: 1,
        width: 250,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/pkk1.png'), fit: BoxFit.fill),
        )),
    Container(
        height: 1,
        width: 250,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/pkk1.png'), fit: BoxFit.fill),
        )),Container(
        height: 1,
        width: 250,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/pkk1.png'), fit: BoxFit.fill),
        )),Container(
        height: 1,
        width: 250,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/pkk1.png'), fit: BoxFit.fill),
        )),
  ];
  final CarouselController _controller = CarouselController();
  final _urlImages = [
    'assets/images/pkk1.png',
    'assets/images/welcome.png',
    'assets/images/welcome.png',
  ];

  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(kFourthColor),
          ),
          height: size.height *  0.17,
          width: size.width * 0.7,
          child: CarouselSlider(
            items: image,
            carouselController: _controller,
            options: CarouselOptions(
                viewportFraction: 1,
                enableInfiniteScroll: false,
                autoPlay: true,
                enlargeCenterPage: true,
                //aspectRatio: 4.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: size.height * 0.015),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: image.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: 10.0,
                  height: 10.0,
                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.black)
                          .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                ),
              );
            }).toList(),
          ),
        ),
      ]),
    );
  }
}



  /*@override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: size.height * 0.4,
          child: CarouselSlider.builder(
            carouselController: _controller,
            options: CarouselOptions(
              viewportFraction: 1,
                //enlargeCenterPage: true,
                autoPlay: true,
                enableInfiniteScroll: false,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
            itemCount: _urlImages.length,
            itemBuilder: (context, index, realIndex) {
              return Column(
                children: [
                  Container(
                    height: size.height * 0.2,
                    width: size.width * 0.4,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            _urlImages[index],
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.04),
                    child: Center(
                        child: AnimatedSmoothIndicator(
                      effect: WormEffect(
                          dotHeight: 10, dotWidth: 10, type: WormType.thin),
                      activeIndex: index,
                      count: _urlImages.length,
                    )),
                  )
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}*/
