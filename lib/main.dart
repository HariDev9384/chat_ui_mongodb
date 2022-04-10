import 'package:chat_ui_mongodb/Services/MongoDB.dart';
import 'package:chat_ui_mongodb/providers/theme_provider.dart';
import 'package:chat_ui_mongodb/screens/Home_Screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
Future<void> main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Database.connect();
  runApp(
  MultiProvider(providers: [  
    ChangeNotifierProvider(create: (context)=>theme_provider())
  ],
  child: const MyApp(),
  
  )
  );
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<theme_provider>(
      builder:(context, value, child) =>  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
        theme: value.theme,
        
      ),
    );
  }
}
