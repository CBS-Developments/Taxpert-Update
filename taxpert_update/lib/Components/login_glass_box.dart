import 'dart:ui';

import 'package:flutter/material.dart';

import '../Sizes/login_page_sizes.dart';

class LoginGlassBox extends StatelessWidget {
  final Widget child;

  const LoginGlassBox({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: getContHoriMargin(context)),
      child: ClipRRect(

        borderRadius: BorderRadius.circular(40),
        child: Container(
          width: ContWidth(context),
          height: imageContHeight(context),
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
                  border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(40),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                      Colors.white.withOpacity(0.5),
                      Colors.white.withOpacity(0.1),
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
