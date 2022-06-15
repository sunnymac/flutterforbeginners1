import 'package:flutter/material.dart';
import 'package:project/screens/utils/mydefaults.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

Myconfig _myconfig = Myconfig();

TextEditingController cellphonecontroller = TextEditingController();
TextEditingController passwordcontroller = TextEditingController();

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

        SizedBox(
          width: MediaQuery.of(context).size.width - 80,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
        BoxShadow(
          color: Colors.grey.shade400,
          blurRadius: 5,
          offset: Offset(0, 2)
        )
        
              ]
            ),
            child: TextFormField(
              controller:cellphonecontroller ,
              keyboardType: TextInputType.phone,
              obscureText: false,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: Colors.white, width: 1),),
                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),
                 borderSide: BorderSide(color: Colors.white, width: 1),),
                 enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),
                 borderSide: BorderSide(color: Colors.white, width: 1),),
                hintText: "Cell Number",
                contentPadding: EdgeInsets.symmetric(vertical: 18),
                prefixIcon: Padding(padding: EdgeInsets.symmetric( horizontal: 16.0), 
                child: Icon(Icons.call, size: _myconfig.myIconSize, color: _myconfig.myIconColor,),
                
                )
              ),
        
            ),
          ),
        ),
        

      ],)
      
      ),
    );
  }
}

