import 'package:flutter/material.dart';
import 'package:project/screens/utils/mydefaults.dart';
import 'package:project/screens/utils/mywidgets.dart';


class WishListScreen extends StatefulWidget {
  
  const WishListScreen({Key? key})
      : super(key: key);

  @override
  _WishListScreenState createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  MyConfig _myconfig = MyConfig();
  String filterLable = "Popularity";
  int qty = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     
      appBar: AppBar(
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
            "WishList",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: _myconfig.myMargin * 0.80,
          right: _myconfig.myMargin * 0.80,
          top: _myconfig.myMargin / 2,
          bottom: _myconfig.myMargin / 2,
        ),
        child: Column(
          children: [
            SearchBar(
              onTap: () {
               
                 },
              text: filterLable,
              height: 50,
              showFilterIcon: true,
              showSearchIcon: false,
            ),
            SizedBox(
              height: 8,
            ),
  

            Container(
                  height: MediaQuery.of(context).size.height * 0.60,
                  //color: Colors.red,
                  child: Column(
                    children: [
                      Container(

                                height: 120,
                                 child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                         children: [
                                           Image.asset(
                                          "assets/images/samosu.png" ),
                                              
                                           SizedBox(
                                             width: 12,
                                           ),
                                           Expanded(
                                             child: Column(
                                               crossAxisAlignment:
                                                   CrossAxisAlignment.start,
                                               mainAxisAlignment:
                                                   MainAxisAlignment.center,
                                               children: [
                                                 Text(
                                                   "Punjabi Samosa",
                                                   overflow: TextOverflow.ellipsis,
                                                   maxLines: 2,
                                                   softWrap: false,
                                                   style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 16,
                              color: _myconfig
                                  .myButtonbackgroundColor,
                              fontWeight: FontWeight.bold),
                                                 ),
                                                 SizedBox(
                                                   height: 5,
                                                 ),
                                                 Text(
                                                  "Super Spicy!",
                                                   style: TextStyle(fontSize: 10),
                                                 ),
                                                 SizedBox(
                                                   height: 5,
                                                 ),
                                                  Text(
                             "Rs.10",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                                                 
                                                 SizedBox(
                                                   height: 5,
                                                 ),
                                                 Container(
                                                   child: Text(
                            "Old Price Rs.15. Save Rs.5",
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color: Colors.grey),
                                                   ),
                                                 ),
                            
                                                
                                               ],
                                             ),
                                           ),
                                           SizedBox(
                                             width: 12,
                                           ),
                                           Container(
                                           //color: Colors.red,
                                          alignment: Alignment.center,
                                             child: Row(
                                               children: [
                            
                            Container(
                              width: 90,
                              height: 40,
                              decoration: BoxDecoration(
                                //color: Colors.blue,
                                border: Border.all(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment
                                        .spaceEvenly,
                                children: [
                                  InkWell(
                                    onTap: () {
                                     setState(() {
                                      if(qty!=0){
qty--;
                                      }
                                      else{
                                        _myconfig.toast(msg: "Nothing to Remove!");
                                      }
                                       
                                     });
                                    },
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.all(
                                              8.0),
                                      child: Text("-",
                                          style: TextStyle(
                                              fontSize: 20)),
                                    ),
                                  ),
                                  Text(
                                      "$qty",
                                      style: TextStyle(
                                          fontSize: 20)),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        qty++;
                                      });
                                      _myconfig.toast(msg: "Added to Cart");
                                      
                                    },
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.all(
                                              8.0),
                                      child: Text("+",
                                          style: TextStyle(
                                              fontSize: 20)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            
                                               ],
                                             ),
                                           ),
                                         ],
                                 ))
                      ,
                      
                
                    ],
                  ),
                )
          ],
        ),
      ),
    );
  }
}