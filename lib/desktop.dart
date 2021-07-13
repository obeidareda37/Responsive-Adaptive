import 'package:flutter/material.dart';
import 'package:flutter_app/widget/container_button.dart';
import 'package:flutter_app/widget/text_form_field.dart';

class DesktopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Login'),
      //   centerTitle: false,
      //   elevation: 0.0,
      // ),
      body: Row(
        children: [
          Expanded(
            child: Container(
              height: double.infinity,
              color: Colors.teal,
            ),
          ),
          Expanded(
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
