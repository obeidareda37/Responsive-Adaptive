import 'package:flutter/material.dart';
import 'package:flutter_app/adaptive/adaptive_indicator.dart';
import 'package:flutter_app/constants.dart';
import 'package:flutter_app/widget/container_button.dart';
import 'package:flutter_app/widget/text_form_field.dart';
class MobileScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:  Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.teal,
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login with your account',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextFormFieldWidget('Email Address'),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextFormFieldWidget('Password'),
                  SizedBox(
                    height: 40.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: ContainerButtonWidget(
                            colorContainer: Colors.teal,
                            colorText: Colors.white,
                            text: 'LOGIN',
                            height: 45.0,
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: ContainerButtonWidget(
                            colorContainer: Colors.blue,
                            colorText: Colors.white,
                            height: 45.0,
                            text: 'REGISTER',
                          )),
                      SizedBox(
                        height: 40.0,
                      ),
                      Center(
                        child: AdaptiveIndicator(
                          os: getOS(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
