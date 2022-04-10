import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
class theme_provider with ChangeNotifier{
   var theme=ThemeData.light();
   List<Color> lightthemecolors=[
      Colors.blue,
     Colors.red,
   ];

   List<Color> darkthemecolors=[
     Colors.black,
     Colors.deepPurple,
   ];
   var background_color=Colors.white12;
   var textcolor=Color.fromARGB(255, 0, 0, 0);
   var theme_icon=Icon(Icons.nightlight_outlined);
  changedarktolight(){
    theme=ThemeData.light();
    background_color=Colors.white12;
    textcolor=Color.fromARGB(255, 0, 0, 0);
    theme_icon=Icon(Icons.nightlight_outlined,color: textcolor);
    notifyListeners();
  }
  changelighttodart(){
    theme=ThemeData.dark();
    background_color=Colors.black12;
    textcolor=Color.fromARGB(255, 247, 246, 246);
    theme_icon=Icon(Icons.light_mode,color: textcolor);
    print('notify');
    notifyListeners();
  }
  @override
  void notifyListeners() {
    // TODO: implement notifyListeners
    super.notifyListeners();
  }

  
}