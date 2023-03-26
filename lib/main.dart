import 'package:flutter/material.dart';
import 'package:store_app/screens/home_page/home_page_view.dart';

import 'Screens/UpdateProductPage/UpdateProductPage.dart';

void main(){
  runApp(StoreApp());
}

class StoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName :(_)=> HomePage(),
        UpdateProductPage.routeName :(_)=> UpdateProductPage(),
      },
    );
  }
}


