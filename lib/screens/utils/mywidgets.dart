
import 'package:flutter/material.dart';
import 'package:project/screens/utils/mydefaults.dart';
Myconfig _myconfig = Myconfig();


class MyInputField extends StatefulWidget {

  final TextEditingController mycontoller;
  final bool obsecure;
  final String hinttext;
  final TextInputType mykeyboard;
  final Icon myicon;
  const MyInputField({
    Key? key,
    required this.myicon,
    required this.mykeyboard,
    required this.hinttext,
    required this.obsecure,
    required this.mycontoller,
    
  }) :  super(key: key);


 

  @override
  State<MyInputField> createState() => _MyInputFieldState();
}

class _MyInputFieldState extends State<MyInputField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
          controller:widget.mycontoller ,
          keyboardType: widget.mykeyboard,
          obscureText: widget.obsecure,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.white, width: 1),),
             border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),
             borderSide: BorderSide(color: Colors.white, width: 1),),
             enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),
             borderSide: BorderSide(color: Colors.white, width: 1),),
            hintText: widget.hinttext,
            contentPadding: EdgeInsets.symmetric(vertical: 18),
            prefixIcon: Padding(padding: EdgeInsets.symmetric( horizontal: 16.0), 
            child: widget.myicon,
             //child: Icon(widget.myicon, size: _myconfig.myIconSize, color: _myconfig.myIconColor,),
            
            )
          ),
    
        ),
      ),
    );
  }
}

