import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store_app/screens/home_page/home_page_view.dart';

void main(){
  runApp(StoreApp());
}

class StoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName :(_)=> HomePage(),
      },
    );
  }
}


