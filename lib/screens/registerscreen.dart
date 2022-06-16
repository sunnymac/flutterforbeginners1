
import 'package:flutter/material.dart';
import 'package:project/screens/utils/mydefaults.dart';
import 'package:project/screens/utils/mywidgets.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  MyConfig _myconfig = MyConfig();

  @override
  void initState() {
    super.initState();
  }

  TextEditingController nameControler = TextEditingController();
  TextEditingController emailControler = TextEditingController();
  TextEditingController cellphoneControler = TextEditingController();
  TextEditingController passControler = TextEditingController();
  TextEditingController addressControler = TextEditingController();
  TextEditingController zipcodeControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              Image.asset(_myconfig.myRegisterScreenLogo),

              MyInputField(
                  keyboardtype: TextInputType.text,
                  hinttext: "Full Name",
                  // validator: (value) {
                  //   _myconfig.nameValidator(value: value);
                  // },
                  hidedata: false,
                  mycontroller: nameControler,
                  myicon: Icon(
                    Icons.person,
                    color: _myconfig.myButtonbackgroundColor,
                    size: _myconfig.myIconSize,
                  )), // Full Name
              SizedBox(
                height: _myconfig.myHeight,
              ),
              MyInputField(
                  keyboardtype: TextInputType.emailAddress,
                  // validator: (value) {
                  //   _myconfig.emailValidator(value: value);
                  // },
                  hinttext: "Email",
                  hidedata: false,
                  mycontroller: emailControler,
                  myicon: Icon(
                    Icons.email_outlined,
                    color: _myconfig.myButtonbackgroundColor,
                    size: _myconfig.myIconSize,
                  )), // Email Id
              SizedBox(
                height: _myconfig.myHeight * 2,
              ),

              MyInputField(
                  keyboardtype: TextInputType.number,
                  hinttext: "Cell Number",
                  // validator: (value) {
                  //   _myconfig.mobileValidator(value: value);
                  // },
                  hidedata: false,
                  mycontroller: cellphoneControler,
                  myicon: Icon(
                    Icons.phone_in_talk_rounded,
                    color: _myconfig.myButtonbackgroundColor,
                    size: _myconfig.myIconSize,
                  )),
              SizedBox(
                height: _myconfig.myHeight * 2,
              ),

              MyInputField(
                  // Password
                  keyboardtype: TextInputType.text,
                  // validator: (value) {
                  //   _myconfig.passwordValidator(value: value);
                  // },
                  hinttext: "******",
                  hidedata: true,
                  mycontroller: passControler,
                  myicon: Icon(
                    Icons.lock_outline_rounded,
                    color: _myconfig.myButtonbackgroundColor,
                    size: _myconfig.myIconSize,
                  )),
              SizedBox(
                height: _myconfig.myHeight * 2,
              ),
              MyInputField(
                  keyboardtype: TextInputType.streetAddress,
                  hinttext: "Address",
                  // validator: (value) {
                  //   _myconfig.requiredValidator(
                  //       value: value, msg: "Address is Required");
                  // },
                  hidedata: false,
                  mycontroller: addressControler,
                  myicon: Icon(
                    Icons.location_on,
                    color: _myconfig.myButtonbackgroundColor,
                    size: _myconfig.myIconSize,
                  )),
              SizedBox(
                height: _myconfig.myHeight * 2,
              ),
              MyInputField(
                  keyboardtype: TextInputType.number,
                  hinttext: "Zip Code",
                  // validator: (value) {
                  //   _myconfig.zipValidator(value: value);
                  // },
                  hidedata: false,
                  mycontroller: zipcodeControler,
                  myicon: Icon(
                    Icons.map_outlined,
                    color: _myconfig.myButtonbackgroundColor,
                    size: _myconfig.myIconSize,
                  )),

              SizedBox(
                height: _myconfig.myHeight * 2,
              ),
              MyButton(
                btnwidth:
                    MediaQuery.of(context).size.width - _myconfig.myMargin * 4,
                bgcolor: _myconfig.myButtonbackgroundColor,
                btntextsize: 20,
                buttontext: "SIGN UP",
                textcolor: _myconfig.myButtonTextColor,
                onTap: () async {
                  _submit();
                },
              ),
              SizedBox(
                height: _myconfig.myHeight * 2,
              ),

              SizedBox(
                height: _myconfig.myHeight * 2,
              ),
              Container(
                margin: EdgeInsets.only(right: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "SIGN IN",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(
                      width: _myconfig.myWidth,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10,
                              offset: Offset(0, 2), // Shadow position
                            ),
                          ],
                        ),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.arrow_forward,
                            size: _myconfig.myIconSize,
                            color: Colors.black,
                          ),
                          // child: Image.asset(
                          //   "assets/images/forwordicon.png",
                          //   width: 20,
                          // ),
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
    // final isValid = _formKey.currentState!.validate();
    // if (!isValid) {
    //   return;
    // } else {
    if (nameControler.text.isEmpty) {
      //print(nameControler.toString());
      _myconfig.toast(msg: "Please Enter Full Name");
      return;
    }

    if (!_myconfig.nameValidator(value: nameControler.text)) {
      _myconfig.toast(msg: "Please Enter Full Name");
      return;
    }

    if (emailControler.text.isEmpty) {
      _myconfig.toast(msg: "Please Enter Email");
      return;
    }

    if (!_myconfig.emailValidator(value: emailControler.text)) {
      _myconfig.toast(msg: "Please Enter Valid Email");
      return;
    }

    if (cellphoneControler.text.isEmpty) {
      _myconfig.toast(msg: "Please Enter Cell Phone");
      return;
    }

    // if (!_myconfig.mobileValidator(value: cellphoneControler.text)) {
    //   _myconfig.toast(msg: "Please Enter Valid Cell Phone");
    //   return;
    // }

    if (!_myconfig.passwordValidator(value: passControler.text)) {
      _myconfig.toast(
          msg:
              "Password must have at least one upper character, one number and one Special Character");
      return;
    }
    if (addressControler.text.isEmpty) {
      _myconfig.toast(msg: "Please Enter Address");
      return;
    }
    if (zipcodeControler.text.isEmpty) {
      _myconfig.toast(msg: "Please Enter Zip Code");
      return;
    }

    // if (!_myconfig.zipValidator(value: zipcodeControler.text)) {
    //   _myconfig.toast(msg: "Zipcode is Invalid");
    //   return;
    // }
  }
}