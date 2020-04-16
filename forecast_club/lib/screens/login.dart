import 'package:flutter/material.dart';
import 'package:forecastclub/utils/colors.dart';
import 'package:forecastclub/utils/styles.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: <Widget>[
            Image(
              image: AssetImage(
                'images/lady0.jpg',
              ),
              height: MediaQuery.of(context).size.height - 390,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            _buildForm(),
          ],
        ),
      ),
    );
  }

  Widget _buildForm(){
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 445,
        decoration: BoxDecoration(
          color: kWhite,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(50),
              topLeft: Radius.circular(50)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 25.0,
            right: 20.0,
            left: 20.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Welcome!',
                    style: wStyle,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Login to continue',
                    style: lStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  suffixIcon: Icon(
                    Icons.email,
                    color: kGrey,
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: kPink)),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  suffixIcon: Icon(
                    Icons.vpn_key,
                    color: kGrey,
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: kPink)),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Create Account',
                    style: TextStyle(
                      fontSize: 16,
                      color: kPinkAccent,
                    ),
                  ),
                  Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: kGrey,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50.0,
              ),
              Container(
                height: 60,
                width: 250,
                decoration: BoxDecoration(
                  color: kPink,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Center(
                  child: Text(
                    'Login',
                    style: lBStyle,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
