import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:stroke_text/stroke_text.dart';
import 'package:taxpert_update/Components/login_glass_box.dart';
import 'package:taxpert_update/Components/new_readio_container.dart';

import '../Components/login_button.dart';
import '../Components/login_textfeild.dart';
import '../Sizes/create_account_page_sizes.dart';
import '../Sizes/login_page_sizes.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: Image.asset("Images/back2.jpg").image, fit: BoxFit.cover),
        ),
        child: Row(
          children: [
            Container(
              width: getPageHalf(context),
              height: getPageHeight(context),
              child: Stack(
                children: [
                  BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 1,
                      sigmaY: 1,
                    ),
                    child: Container(),
                  ),
                ],
              ),
            ),
            VerticalDivider(
              width: 25,
              thickness: 2,
              endIndent: 20,
              indent: 20,
              color: Colors.black,
            ),
            Column(
              children: [
                SizedBox(
                  height: sizeBoxXLHeight(context),
                ),
                LoginGlassBox(
                  width: createContWidth(context),
                  height: createContHeight(context),
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: sizeBoxXLHeight(context),
                        ),
                        Text(
                          'Create Account',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: getFontxXL(context)),
                        ),
                        SizedBox(
                          height: sizeBoxXLHeight(context),
                        ),
                        LoginTextField(
                          labelText: "First Name",
                        ),
                        SizedBox(
                          height: sizeBoxXLHeight(context),
                        ),
                        LoginTextField(
                          labelText: "Last Name",
                        ),
                        SizedBox(
                          height: sizeBoxXLHeight(context),
                        ),
                        NewRedioContainer(
                          groupValueOne: 1,
                          valueOne: 1,
                          onChangedOne: (val) {},
                          groupValueTwo: 2,
                          valueTwo: 2,
                          onChangedTwo: (val) {},
                          groupValueThree: 3,
                          valueThree: 3,
                          onChangedThree: (int? value) {},
                        ),
                        LoginButton(
                          width: createButtonWidth(context),
                          childText: 'Create Account',
                          onTap: () {},
                        ),
                        SizedBox(
                          height: sizeBoxLHeight(context),
                        ),
                        Container(
                          width: ContWidth(context),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              StrokeText(
                                text: "Don't have an Account?  ",
                                textStyle: TextStyle(
                                    // fontWeight: FontWeight.bold,
                                    fontSize: getFontXL(context),
                                    color: Colors.black),
                                strokeColor: Colors.black,
                                strokeWidth: 00.8,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CreateAccount()),
                                  );
                                },
                                child: StrokeText(
                                  text: "Create Account",
                                  textStyle: TextStyle(
                                      // fontWeight: FontWeight.bold,
                                      fontSize: getFontXL(context),
                                      color: Colors.white),
                                  strokeColor: Colors.black,
                                  strokeWidth: 00.8,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
