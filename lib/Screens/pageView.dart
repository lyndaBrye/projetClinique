import 'package:flutter/material.dart';
import 'package:projetclinique/Screens/intropage1.dart';
import 'package:projetclinique/Screens/intropage2.dart';
import 'package:projetclinique/Screens/intropage3.dart';
import 'package:projetclinique/Screens/page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class OnbordingScreen extends StatefulWidget {
  const OnbordingScreen({Key? key}) : super(key: key);

  @override
  State<OnbordingScreen> createState() => _OnbordingScreenState();
}

class _OnbordingScreenState extends State<OnbordingScreen> {
  PageController _controller=PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller ,
            onPageChanged: (index){
              setState((){
                onLastPage = (index==2);

              });
            },
            children: [
              IntroPage(),
              IntroPage2(),
              IntroPage3(),

            ],
          ),
          Container(
            alignment: Alignment(0,0),
            child:Row(
              children: [
                //skip
                GestureDetector(
                  onTap:(){
                    _controller.jumpToPage(2);
                    
                  },
                  child:Text('Skip'),

                ),
              //pagination
                SmoothPageIndicator(controller: _controller, count: 3),
                //
                onLastPage
                    ? GestureDetector(
                  child:Text('done')
                  ,onTap:(){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return registerScreen();
                    }));


                },

                ):
                GestureDetector(
                  child:Text('next')
                  ,onTap:(){
                  _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);

                },

                )
                ,
              ],
            )
          )
        ],
      )
    );
  }
}
