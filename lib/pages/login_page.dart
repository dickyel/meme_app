import 'dart:async';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:meme_app/theme.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    Widget logoText() => Container(
        margin: EdgeInsets.only(
          top: 20,
          right: 20,
          left: 20,
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  'assets/images/logo.svg',
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'Aplikasi Pertama Buat Meme Random\nDengan Cepat',
                  style: brownTextStyle.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ));

    Widget headerText() => Container(
        margin: EdgeInsets.only(
          top: 30,
          left: 20,
          right: 20,
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Login',
                  style: brownTextStyle.copyWith(
                      fontWeight: FontWeight.bold, color: greenColor),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'Slahkan login dengan akun yang terdaftar dalam sistem',
                  style: brownTextStyle.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ));

    Widget usernamePage() => Container(
          margin: const EdgeInsets.only(
            top: 20,
            left: 20,
            right: 20,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          width: double.infinity,
          height: 65,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: greyColor,
          ),
          child: Center(
              child: Row(
            children: [
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration.collapsed(
                    hintText: "Email/Username",
                    hintStyle: brownTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              )
            ],
          )),
        );

    Widget passwordPage() => Container(
          margin: const EdgeInsets.only(
            top: 20,
            left: 20,
            right: 20,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          width: double.infinity,
          height: 65,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: greyColor,
          ),
          child: Center(
              child: Row(
            children: [
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration.collapsed(
                    hintText: "Password Anda",
                    hintStyle: brownTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              )
            ],
          )),
        );

    Widget checkboxPage() => Container(
          margin: EdgeInsets.only(
            left: 20,
            right: 20,
            top: 20,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: 16,
                  height: 16,
                  child: Checkbox(
                    value: _value,
                    onChanged: (value) {},
                  )),
              SizedBox(
                width: 4,
              ),
              Text(
                'Ingatkan Saya!!!',
                style: brownTextStyle.copyWith(
                    fontSize: 12, fontWeight: FontWeight.w400),
              )
            ],
          ),
        );

    Widget btnLogin() => Container(
          width: double.infinity,
          height: 58,
          margin: const EdgeInsets.only(
            top: 40,
            left: 20,
            right: 20,
          ),
          decoration: BoxDecoration(
            color: greenColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
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
              Navigator.pushNamed(context, '/home');
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
          logoText(),
          headerText(),
          usernamePage(),
          passwordPage(),
          checkboxPage(),
          btnLogin(),
          btnRegister(),
        ],
      ),
    );
  }
}
