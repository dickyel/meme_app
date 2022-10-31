import 'dart:async';

import 'package:flutter_svg/svg.dart';
import 'package:meme_app/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget logoText() => Container(
          margin: EdgeInsets.only(
            top: 30,
          ),
          child: Column(
            children: [
              SvgPicture.asset(
                'assets/images/logo.svg',
              ),
            ],
          ),
        );

    Widget searchPage() => Container(
          margin: const EdgeInsets.only(
            top: 40,
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration.collapsed(
                    hintText: "Ketik Nama Meme ",
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

    Widget searchButton() => Container(
          width: double.infinity,
          height: 58,
          margin: const EdgeInsets.only(
            top: 25,
            left: 20,
            right: 20,
            bottom: 20,
          ),
          decoration: BoxDecoration(
            color: greenColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextButton(
            onPressed: () {},
            child: Text(
              'Cari Meme',
              style: brownTextStyle.copyWith(
                fontSize: 20,
                color: whiteColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );

    Widget downloadButton() => Container(
          width: double.infinity,
          height: 58,
          margin: const EdgeInsets.only(
            top: 25,
            left: 20,
            right: 20,
            bottom: 20,
          ),
          decoration: BoxDecoration(
            color: greenColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextButton(
            onPressed: () {},
            child: Text(
              'Download',
              style: brownTextStyle.copyWith(
                fontSize: 20,
                color: whiteColor,
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
          searchPage(),
          searchButton(),
          Divider(),
          SizedBox(
            height: 10,
          ),
          Image.asset(
            'assets/images/contoh.png',
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            'Full HD 1080 X 1080',
            style: brownTextStyle.copyWith(
              fontSize: 10,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          downloadButton(),
        ],
      ),
    );
  }
}
