
import 'package:flutter/material.dart';



// This is my own inputfield
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

            focusedBorder: 
            OutlineInputBorder(
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
          
            
            )
          ),
    
        ),
      ),
    );
  }
}

// OWn Button widget


class MyButton extends StatefulWidget {

  final String buttontext;
  final Function ontap;


  const MyButton({
    Key? key, 
    required this.ontap,
    required this.buttontext,
  }) : super(key: key);

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return     Container(
     width:  MediaQuery.of(context).size.width - 80,
     height: 50,
    child:   ElevatedButton(onPressed:(){
      widget.ontap();
    },
        
    
      
    
      child: Text(widget.buttontext,
    
      style: TextStyle(
    
        color: Colors.white,
    
        letterSpacing: 1.5,
    
        fontSize: 20,
    
        fontWeight: FontWeight.bold
    
      ),
    
      ),
    
      
    
      style: ButtonStyle(
    
        backgroundColor: MaterialStateProperty.all(Colors.red),
    
      
    
      
    
      
    
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    
      
    
          RoundedRectangleBorder(
    
      
    
            borderRadius: BorderRadius.circular(15))
    
      
    
          )
    
      
    
      ),
    
      
    
      
    
      
    
      ),
    
    );
  }
}
