import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/style_constants.dart';

Widget Onbord_Page(
    {required Color color,
    fontColor = Colors.white,
    required String url,
    required title,
    required subtitle}) {

  return Container(
    color: color,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [

        Expanded(
            flex: 3,
            child: 
            Container(
              margin: EdgeInsets.only(top: 18),
              child: Image.asset(
                url,
                fit: BoxFit.contain,
                width: double.infinity,
              ),
            )),
        Expanded(
            flex: 2,
            child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(children: [
                  Text(
                    title,
                    style: mainTextStyle.copyWith(fontSize: 25),
                  ),
                  Container(
                      padding: EdgeInsets.only(left: 13  ,right: 10 , top: 36 ),

                      child: Text(subtitle,style:mainTextStyle ,)),
                ]))),
      ],
    ),
  );
}
