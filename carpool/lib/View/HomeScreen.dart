// ignore_for_file: file_names, camel_case_types

import 'package:carpool/exportlinks.dart';

import '../CustomWidgets/carousel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: myColors().bgColor,
        title: cWhiteTitle(text: "Hello, Mohid!", context: context),
      ),
      drawer: cDrawer(context),
      body: SafeArea(
          child: Stack(
        children: [
          Positioned(
            top: 600.0,
            left: 220.0,
            child: Container(
              height: MySizes(context).screenHeight * 0.2,
              width: MySizes(context).screenWidth * 0.4,
              decoration: BoxDecoration(
                image: DecorationImage(
                    opacity: 0.2,
                    image: AssetImage('assets/images/bg.png'),
                    fit: BoxFit.contain),
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: MySizes(context).screenHeight * 0.05,
              ),
              carouselSlider(context),
              SizedBox(
                height: MySizes(context).screenHeight * 0.1,
              ),
              Container(
                decoration: BoxDecoration(
                    color: myColors().bgWhite,
                    border: Border.all(color: myColors().bgColor),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.lightGreen
                            .withOpacity(0.5), // Light green shadow
                        spreadRadius: 3,
                        blurRadius: 7,
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                width: MySizes(context).screenWidth * 0.9,
                height: MySizes(context).screenHeight * 0.2,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 50, left: 15),
                      child: cbgColorTitle(text: "BOOK RIDE", context: context),
                    ),
                    SizedBox(
                        height: MySizes(context).screenHeight * 0.4,
                        width: MySizes(context).screenWidth * 0.4,
                        child:
                            Image(image: AssetImage('assets/images/car.png'))),
                  ],
                ),
              ),
              // Container(
              //   height: MySizes(context).screenHeight * 0.2,
              //   width: MySizes(context).screenWidth * 0.8,
              //   decoration: BoxDecoration(
              //       image: DecorationImage(
              //           image: AssetImage('assets/images/car.png')),
              //       // color: myColors().bgColor,
              //       borderRadius: BorderRadius.all(Radius.circular(25.0))),
              //   child: cTitle(text: "Book Ride", context: context),
              // ),
            ],
          ),
        ],
      )),
    );
  }
}
