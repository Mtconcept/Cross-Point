import 'package:crosspoint/insurancePlans.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Onboard extends StatefulWidget {
  @override
  _OnboardState createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  PageController _pageController;
  int currentIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();

    void dispose() {
      _pageController.dispose();
      super.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 535,
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/onboard flow.png'))),
          ),
          PageView(
            controller: _pageController,
            onPageChanged: onChangeFunction,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 100.0),
                    child: Image.asset('assets/images/onboard3 1.png'),
                  ),
                  SizedBox(
                    height: 150,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 24.0),
                    child: Text(
                      'One Account,\nEndless Reward',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0, top: 24),
                    child: Text(
                      'Get connected with your mobile phone\nin a matter of minutes and start enjoying \nendless rewards ',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Gilroy',
                      ),
                    ),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 150.0),
                    child: Image.asset('assets/images/onboard1 1.png'),
                  ),
                  SizedBox(
                    height: 150,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 24.0),
                    child: Text(
                      'Insurance Perks',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0, top: 24),
                    child: Text(
                      'We are committed to building a healthier \nafrica so some of our incentives earned\nare focused on healthcare ',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          Positioned(
            bottom: 30,
            child: Padding(
              padding: EdgeInsets.only(left: 24),
              child: Row(
                children: [
                  InkWell(
                    onTap: () => skipFunction(),
                    child: Text(
                      'Skip',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            left: 360,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                InkWell(
                    onTap: () => nextFunction(),
                    child: Icon(Icons.arrow_forward)),
              ],
            ),
          )
        ],
      ),
    );
  }

  onChangeFunction(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  static const _kDuration = Duration(milliseconds: 300);
  static const _curves = Curves.ease;

  skipFunction() {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (BuildContext context) => InsurancePlans()));
  }

  nextFunction() {
    _pageController.nextPage(duration: _kDuration, curve: _curves);
    if (currentIndex == 1) {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (BuildContext context) => InsurancePlans()));
    }
  }
}
//
//class Indicator extends StatelessWidget {
//  final int positionIndex, currentIndex;
//  const Indicator({this.currentIndex, this.positionIndex});
//
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      width: 12,
//      height: 12,
//      decoration: BoxDecoration(
//          border: Border.all(
//            color: Color(0xff7D17AD),
//          ),
//          color: positionIndex == currentIndex
//              ? Color(0xff7D17AD)
//              : Colors.grey.withOpacity(0.2),
//          shape: BoxShape.circle),
//    );
//  }
//}
//Positioned(
//bottom: 60,
//left: 150,
//child: Row(
//mainAxisAlignment: MainAxisAlignment.center,
//mainAxisSize: MainAxisSize.max,
//crossAxisAlignment: CrossAxisAlignment.center,
//children: [
//Indicator(
//positionIndex: 1,
//currentIndex: currentIndex,
//),
//SizedBox(
//width: 10,
//),
//Indicator(
//positionIndex: 2,
//currentIndex: currentIndex,
//),
//],
//),
//),
