import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

  TextEditingController abc = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(


        child: Column(
          children: [
            TextFormField(
              
              controller: abc,


            ),

            ElevatedButton(onPressed: (){

print(abc.text);

            }, child: Text("Press ME"))
          ],
        ),
      ),
    );
    
  }
}