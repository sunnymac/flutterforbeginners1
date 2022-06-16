import 'package:flutter/material.dart';
import 'package:project/screens/registerscreen.dart';
import 'package:project/screens/utils/mydefaults.dart';

import 'package:project/screens/utils/mywidgets.dart';



class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController cellphoneControler = TextEditingController();
  TextEditingController passControler = TextEditingController();

  MyConfig _myconfig = MyConfig();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              Image.asset(_myconfig.myLoginScreenLogo),
              SizedBox(
                height: _myconfig.myHeight * 2,
              ),
              MyInputField(
                keyboardtype: TextInputType.number,
                myicon: Icon(
                  Icons.phone_in_talk_outlined,
                  color: _myconfig.myButtonbackgroundColor,
                  size: _myconfig.myIconSize,
                ),
                hinttext: "Cell Phone",
                hidedata: false,
                mycontroller: cellphoneControler,
              ),
              SizedBox(
                height: _myconfig.myHeight,
              ),
              MyInputField(
                myicon: Icon(
                  Icons.lock_outline_rounded,
                  color: _myconfig.myButtonbackgroundColor,
                  size: _myconfig.myIconSize,
                ),
                keyboardtype: TextInputType.text,
                hinttext: "******",
                hidedata: true,
                mycontroller: passControler,
              ),
              SizedBox(
                height: _myconfig.myHeight / 3,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: _myconfig.mySmallFontSize,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                height: _myconfig.myHeight / 3,
              ),
              MyButton(
                btnwidth:
                    MediaQuery.of(context).size.width - _myconfig.myMargin * 4,
                bgcolor: _myconfig.myButtonbackgroundColor,
                btntextsize: _myconfig.myExtraLargeFontSize,
                buttontext: "SIGN IN",
                textcolor: _myconfig.myButtonTextColor,
                onTap: () async {
                  _submit();
                },
              ),
              SizedBox(
                height: _myconfig.myHeight,
              ),
              SizedBox(
                height: _myconfig.myHeight,
              ),
              SizedBox(
                height: _myconfig.myHeight,
              ),
              Container(
                margin: EdgeInsets.only(right: _myconfig.myMargin * 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "SIGN UP",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: _myconfig.myLargeFontSize),
                    ),
                    SizedBox(
                      width: _myconfig.myWidth,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterScreen()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: _myconfig.myButtonTextColor,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade100,
                              blurRadius: 10,
                              offset: Offset(0, 2), // Shadow position
                            ),
                          ],
                        ),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 25,
                          child: Icon(
                            Icons.arrow_forward,
                            size: _myconfig.myIconSize,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }

  void _submit() async {
    if (cellphoneControler.text.isEmpty) {
      _myconfig.toast(msg: "Please Enter Cell Phone");
      return;
    }

    if (passControler.text.isEmpty) {
      _myconfig.toast(msg: "Please Enter Password");
      return;
    }

    // if ("as" == " ") {
    //   // TODO : Change Condition
    //   _myconfig.toast(msg: "Login Sucess");
    // } else {
    //   _myconfig.toast(msg: "Incorrect Username or Password");
    // }
  }
}