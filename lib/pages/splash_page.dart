import 'dart:async';

import 'package:meme_app/theme.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget headerText() => Container(
          margin: EdgeInsets.only(
            top: 30,
          ),
          child: Column(children: [
            Center(
              child: Text(
                'Buat Meme Kamu\nDengan Cepat',
                style: brownTextStyle.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Image.asset(
              'assets/images/ilustrasi.png',
              height: 300,
            ),
          ]),
        );
    Widget btnLogin() => Container(
          width: double.infinity,
          height: 58,
          margin: const EdgeInsets.only(
            top: 60,
            left: 20,
            right: 20,
          ),
          decoration: BoxDecoration(
            color: greenColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextButton(
            onPressed: () {},
            child: Text(
              'Masuk',
              style: brownTextStyle.copyWith(
                fontSize: 20,
                color: whiteColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );

    Widget btnRegister() => Container(
          width: double.infinity,
          height: 58,
          margin: const EdgeInsets.only(
            top: 20,
            left: 20,
            right: 20,
          ),
          decoration: BoxDecoration(
            color: greyColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
            child: Text(
              'Register',
              style: brownTextStyle.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );

    return Scaffold(
      backgroundColor: whiteColor,
      body: Column(
        children: [
          headerText(),
          btnLogin(),
          btnRegister(),
        ],
      ),
    );
  }
}
