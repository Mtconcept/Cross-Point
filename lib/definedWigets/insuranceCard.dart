import 'package:flutter/material.dart';

class InsuranceCard extends StatelessWidget {
  String plan;
  String plantitle;
  Color cardColor;
  String planRate;

  InsuranceCard({this.plan, this.planRate, this.plantitle, this.cardColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Padding(
            padding: EdgeInsets.only(left: 24, right: 24),
            child: Container(
              height: 462,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: cardColor, borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      plan,
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gilroy',
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      plantitle,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Gilroy',
                          fontSize: 16,
                          wordSpacing: 2,
                          letterSpacing: 1),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Text(
                      'Plan Rate',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.5),fontFamily: 'Gilroy', fontSize: 16),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Text(
                          planRate,
                          style: TextStyle(
                              fontSize: 36,
                              fontFamily: 'Gilroy',
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '/Monthly',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Gilroy',
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Center(
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          width: 200,
                          height: 47,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                                width: 2,
                                style: BorderStyle.solid,
                              ),
                              borderRadius: BorderRadius.circular(23)),
                          child: Center(
                              child: Text(
                                'Choose Plan',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: 'Gilroy',
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}