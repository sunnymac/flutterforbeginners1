
import 'package:flutter/material.dart';
import 'package:project/screens/utils/mydefaults.dart';
import 'package:project/screens/utils/mywidgets.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  MyConfig _myconfig = MyConfig();

  int sliderCurrentIndex = 0;

 

  @override


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     
      appBar: AppBar(
        centerTitle: true,
        leadingWidth: 80,
       elevation: _myconfig.myElevation,
        leading: InkWell(
          onTap: () {
          // Navigator.pop(context);
          },
          child: Image.asset(
            "assets/images/back.png",
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Text(
            "Home",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body:  Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SearchBar(
                            onTap: () {
                            
                            },
                            text: "Search Products",
                            height: 40,
                            showFilterIcon: false,
                            showSearchIcon: true,
                          ),
                         Spacer(),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                 Container(
                            height:
                                MediaQuery.of(context).size.width >
                                        450
                                    ? MediaQuery.of(context)
                                            .size
                                            .height *
                                        0.25
                                    : MediaQuery.of(context)
                                            .size
                                            .height *
                                        0.17,
                            width:
                                MediaQuery.of(context).size.height *
                                    0.20,
                            child: Card(
                              color: Colors.transparent,
                              elevation: 4,
                              child: Image.asset("assets/images/imgpsh.png")
                                       
                                       
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                           "FULL DISH",
                                   ),
                         
                              ],
                            )
                            , Column(
                              children: [
                                 Container(
                            height:
                                MediaQuery.of(context).size.width >
                                        450
                                    ? MediaQuery.of(context)
                                            .size
                                            .height *
                                        0.25
                                    : MediaQuery.of(context)
                                            .size
                                            .height *
                                        0.17,
                            width:
                                MediaQuery.of(context).size.height *
                                    0.20,
                            child: Card(
                              color: Colors.transparent,
                              elevation: 4,
                              child: Image.asset("assets/images/staticsamosa.png")
                                       
                                       
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                           "FAST FOOD",
                                   ),
                          
                              ],
                            )
                            

                          
                          ],
                         ),
                          Spacer(),
                           
                        ],
                      ),
                    );
                  


  }}