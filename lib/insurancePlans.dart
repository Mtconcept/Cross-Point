import 'package:crosspoint/definedWigets/indicator.dart';
import 'package:crosspoint/definedWigets/insuranceCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'signUp.dart';

class InsurancePlans extends StatefulWidget {
  @override
  _InsurancePlansState createState() => _InsurancePlansState();
}

class _InsurancePlansState extends State<InsurancePlans> {
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
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24.0, top: 82),
            child: Text(
              'Choose An\nInsurance Plan',
              style: TextStyle(
                fontSize: 30,
                fontFamily: "Gilroy",
                color: Color(0xff7D17AD),
                fontWeight: FontWeight.w300
              ),
            ),
          ),
          PageView(
            controller: _pageController,
            onPageChanged: pageChanges,
            children: [
              InsuranceCard(
                plan: 'Elite',
                plantitle:
                    'Elite  Lifestyles transfer the appropriate use of exclusions  with regard for better positive and quality assurance that defines which they become availableElite  Lifestyles transfer the appropriate use of exclusions  with regard for better positive and quality assurance that defines which they become available',
                planRate: '6000',
                cardColor: Color(0xff7D17AD),
              ),
              InsuranceCard(
                plan: 'Premium',
                plantitle:
                    'Elite  Lifestyles transfer the appropriate use of exclusions  with regard for better positive and quality assurance that defines which they become availableElite  Lifestyles transfer the appropriate use of exclusions  with regard for better positive and quality assurance that defines which they become available',
                planRate: '4500',
                cardColor: Color(0xffE89F40),
              ),
              InsuranceCard(
                plan: 'Elite',
                plantitle:
                    'Elite  Lifestyles transfer the appropriate use of exclusions  with regard for better positive and quality assurance that defines which they become availableElite  Lifestyles transfer the appropriate use of exclusions  with regard for better positive and quality assurance that defines which they become available',
                planRate: '3000',
                cardColor: Color(0xffD2597B),
              )
            ],
          ),
          Positioned(
              bottom: 150,
              left: 160,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Indicators(
                    currentIndex: currentIndex,
                    positionIndex: 1,
                  ),
                  SizedBox(width: 16,),
                  Indicators(
                    currentIndex: currentIndex,
                    positionIndex: 2,
                  ),
                  SizedBox(width: 16,),
                  Indicators(
                    currentIndex: currentIndex,
                    positionIndex: 3,
                  ),
                ],
              )),

          Positioned(
              bottom: 30,
              left: 70,
              child: FlatButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => SignUp()));
                  },
                  child: Text(
                    'I ALREADY HAVE A PLAN SKIP ',
                    style: TextStyle(letterSpacing: 1, fontSize: 14),
                  )))
        ],
      ),
    );
  }

  void pageChanges(int index) {
    setState(() {
      currentIndex = index;
    });
  }

}



