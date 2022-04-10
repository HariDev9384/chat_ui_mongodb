import 'package:chat_ui_mongodb/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Consumer<theme_provider>(
      builder: ((context, value, child) => Scaffold(
        //appBar: AppBar(),
        body: SafeArea(
          child: Container(
             decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: value.theme==ThemeData.dark() ? value.darkthemecolors:value.lightthemecolors,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight
              )
            ),
            child: Stack(
              children: 
                [Container(
                  margin: EdgeInsets.all(10),
                  height: height/1,
                  width: width/1,
                  child: Column(
                    children: [
                      Container(
                        height: height*0.05,
                        width: width*1,
                        //color: Colors.white,
                        child: Stack(
                          children: [
                            Positioned(
                              top: height*0,
                              child: Text('Good Morning',
                                                      style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: value.textcolor,
                                                      ),
                                                      ),
                            ),
                          Positioned(
                            top: height*0.015,
                            child: Text('GORDON MOORE',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: value.textcolor,
                            ),
                            ),
                          ),
                          Positioned(
                            top: height*-0.01,
                            left: width*0.6,
                            child: search_button(value)),
                           Positioned(
                            left: width*0.74,
                            top: height*0.004,
                             child: profile_avatar(value)),
                           Positioned(
                             left: width*0.82,
                             top: height*-0.013,
                             child: ThemeChangeButton(value)),

                          ],
                        ),
                      ),
                      
                      
                    ],
                  ),
                ),
                Positioned(
                  top: height*0.2,
                  child: Container(
                        height: height*1,
                        width: width*1,
                        //color: Colors.red,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: value.background_color,
                          border: Border.all(color: Colors.white)
                        ),
                            ),
                ),
              ],
            ),
          ),
        ),
      )
      )
    );
  }
}
Widget profile_avatar(value){
  return CircleAvatar(
    radius: 10.0,
    backgroundColor: value.textcolor,
  );
}
Widget search_button(value){
    return IconButton(
      icon: Icon(Icons.search,
      color: value.textcolor
      ),
      onPressed: (){
        
      }
    );
  }
Widget ThemeChangeButton(var value){
  return IconButton(
            icon: value.theme_icon,
            onPressed: (){
              if(value.theme==ThemeData.dark()){
                value.changedarktolight();
                value.notifyListeners();
              }else if(value.theme==ThemeData.light()){
                value.changelighttodart();
                value.notifyListeners();
              }
              value.notifyListeners();
              //value.changelighttodart();
            },
          );
}

// Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
                          
//                         ],
//                       ),
//                       Row(
//                         children: [
//                           
//                         ],
//                       ),
                      
                              
                      
//                     ],
//                     ),