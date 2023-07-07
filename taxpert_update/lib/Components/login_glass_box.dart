import 'dart:ui';

import 'package:flutter/material.dart';

import '../Sizes/login_page_sizes.dart';

class LoginGlassBox extends StatelessWidget {
  final child;
  final height;
  final width;


  const LoginGlassBox({Key? key, required this.child, this.height, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: getContHoriMargin(context)),
      child: ClipRRect(

        borderRadius: BorderRadius.circular(40),
        child: Container(

          width: width,
          height: height,
          // color: Colors.white,
          child: Stack(
            children: [
              //blur effect
              BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 5,
                  sigmaY: 5,
                ),
                child: Container(),
              ),

              //gradient effect
              Container(

                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green, width: 3),
                    borderRadius: BorderRadius.circular(40),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                      Colors.white.withOpacity(0.5),
                      Colors.white.withOpacity(0.25),
                    ]),
                ),
              ),
              //child
              child,

            ],
          ),
        ),
      ),
    );
  }
}
