import 'package:flutter/material.dart';
import 'package:project/screens/utils/mydefaults.dart';
import 'package:project/screens/utils/mywidgets.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

Myconfig _myconfig = Myconfig();

TextEditingController cellphonecontroller = TextEditingController();
TextEditingController passwordcontroller = TextEditingController();
TextEditingController confirmpasswordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: 
      Column(children: [

        Image.asset(_myconfig.myLoginScreenLogo),

        SizedBox(
          height: _myconfig.myHeight*2,
        ),

        MyInputField(
          myicon: Icon(Icons.call,size: _myconfig.myIconSize, color: _myconfig.myIconColor ),

          mykeyboard: TextInputType.phone,
          hinttext: "Cell Number",
          mycontoller: cellphonecontroller, 
        obsecure: false,
       ),
         SizedBox(
          height: _myconfig.myHeight*2,
        ),
        MyInputField(myicon: Icon(Icons.lock, size: _myconfig.myIconSize, color: _myconfig.myIconColor), 
        mykeyboard: TextInputType.text, 
        hinttext: "Password", 
        obsecure: true,
         mycontoller: passwordcontroller),
          SizedBox(
          height: _myconfig.myHeight*2,
        ),
        // MyInputField(myicon: Icon(Icons.lock, size: _myconfig.myIconSize, color: _myconfig.myIconColor),
        //  mykeyboard: TextInputType.text,
        //   hinttext: "Confirm Password",
        //    obsecure: true,
        //     mycontoller: confirmpasswordcontroller)
      
Text("Forgot Password?", style: TextStyle(
  fontWeight: FontWeight.bold
),),
SizedBox(
   height: _myconfig.myHeight*2,
),

MyButton(
  ontap: (){},
  buttontext: "SIGN IN",
),
SizedBox(
  height: _myconfig.myHeight*2,
),
MyButton(ontap: (){}, buttontext: "SIGN UP")



         
        

      ],)
      
      ),
    );
  }
}
