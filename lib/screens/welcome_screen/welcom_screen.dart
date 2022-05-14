import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../constants/style_constants.dart';
import 'bulid_onbord_page.dart';

class Onbord extends StatefulWidget {
  const Onbord({Key? key}) : super(key: key);

  @override
  State<Onbord> createState() => _OnbordState();
}

class _OnbordState extends State<Onbord> {
  void initState() {
    super.initState();

  }
  PageController pageControler = PageController();
  int pagIndex = 0;
  Widget showStartButton() {
    if (pagIndex == 2) {
      return MaterialButton(
        onPressed: () => {
         Get.toNamed('/LogIn')
        },
        color: Colors.green,
        splashColor: Colors.indigo,
        child: const Text(
          "start",
          style: mainTextStyle,
        ),
        minWidth: double.infinity,
        height: 60,
        elevation: 10,
      );
    } else {
      return Container(
          height: 60,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                  onTap: () => {
                        pageControler.jumpToPage(0),
                      },
                  child: Text(
                    "Skip",
                    style: btTextStyle,
                  )),
              SmoothPageIndicator(
                  controller: pageControler, // PageController
                  count: 3,
                  effect: WormEffect(), // your preferred effect
                  onDotClicked: (index) {
                    pageControler.animateToPage(index,
                        duration: Duration(microseconds: 600),
                        curve: Curves.easeIn);

                    print(index);
                  }),
              InkWell(
                onTap: () => {
                  pageControler.nextPage(
                      duration: Duration(milliseconds: 600),
                      curve: Curves.easeInOut)
                },
                child: Text(
                  "Next",
                  style: btTextStyle,
                ),
              ),
            ],
          ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 30),
        child: PageView(
          onPageChanged: (index) {
            pagIndex = index;
            setState(() {});
            print(pagIndex);
          },
          controller: pageControler,
          children: [
            Onbord_Page(
                color: Colors.orange,
                title: "Shoping Is Easy now",
                subtitle:
                    "some data on this On bord Screen some data on this On bord Screen some data on this On bord Screen",
                url: "assets/images/2.png"),
            Onbord_Page(
                color: Colors.deepOrange,
                title: "Shoping Is Easy now",
                subtitle:
                    "some data on this On bord Screen some data on this On bord Screen some data on this On bord Screen",
                url: "assets/images/3.png"),
            Onbord_Page(
                color: Colors.green,
                title: "Shoping Is Easy now",
                subtitle:
                "some data on this On bord Screen some data on this On bord Screen some data on this On bord Screen",
                url: "assets/images/1.png"),

          ],
        ),
      ),
      bottomSheet: showStartButton(),
    );
  }
}
