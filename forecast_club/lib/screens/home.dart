import 'package:flutter/material.dart';
import 'package:forecastclub/screens/login.dart';
import 'package:forecastclub/utils/colors.dart';
import 'package:forecastclub/utils/styles.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: kWhite,
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(16, 50, 16, 5),
              width: MediaQuery.of(context).size.width,
              height: 420,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      //line
                      Container(
                        height: 60,
                        width: 2,
                        decoration: BoxDecoration(color: kBlack),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Container(
                        height: 60,
                        child: Text(
                          'THE\nFORECAST\nCLUB.',
                          style: lTextStyle,
                        ),
                      ),
                      //text
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Let\'s create your\nown style',
                    style: titleStyle,
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    'Let\'s create your own style. Everyone has their own style and we will give you with the most accurate trend forecast',
                    style: subTitleStyle,
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    LoginScreen()));
                      },
                      child: Container(
                        height: 60,
                        width: 220,
                        decoration: BoxDecoration(
                          color: kPink,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Let\'s get started',
                              style: bTextStyle,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: kWhite,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 465,
              left: 15,
              child: Container(
                height: 130,
                width: 130,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(130 / 2),
                    color: kOrange),
              ),
            ),
            Positioned(
              top: 515,
              left: 85,
              child: Container(
                height: 230,
                width: 230,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(230 / 2),
                    color: kOrange),
              ),
            ),
            Positioned(
              top: 425,
              right: -120,
              child: Image.asset(
                'images/lady1.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
