import 'package:flutter/material.dart';
import 'package:riafy_instagram_clone/controller/view_state.dart';
import 'package:riafy_instagram_clone/view/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ViewState()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'riafy_instagram',
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            accentColor: Colors.black,
            appBarTheme: AppBarTheme(
              backgroundColor: Colors.white,
            )),
        home: HomeScreen(),
      ),
    );
  }
}
