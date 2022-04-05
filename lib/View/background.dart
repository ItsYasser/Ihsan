// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class BackGround extends StatelessWidget {
  const BackGround({
    Key? key,
    this.child = const SizedBox.shrink(),
  }) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: double.infinity,
      width: double.infinity,
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff0A2D61),
              Color(0xff1165C4),
              Color(0xff1480F3),
            ]),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Opacity(
            opacity: .2,
            child: SvgPicture.asset(
              "assets/images/background.svg",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 0,
            right: size.width * 0.035,
            child: SvgPicture.asset(
              "assets/images/lantern.svg",
            ),
          ),
          Positioned(
            top: 0,
            left: size.width * 0.035,
            child: SvgPicture.asset(
              "assets/images/lantern.svg",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: size.height * 0.13,
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          "assets/images/logo.svg",
                          fit: BoxFit.contain,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 40, top: 5),
                          child: Text(
                            "احسان",
                            style: Theme.of(context)
                                .textTheme
                                .headline2
                                ?.copyWith(
                                    fontFamily:
                                        GoogleFonts.reemKufi().fontFamily,
                                    color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "تطبيق احســان ، تطبيق لرسم البسمة على وجوه المحتاجين",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
