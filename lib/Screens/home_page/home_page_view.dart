import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/ApiManager/Services/getAllProductsService.dart';
import 'package:store_app/CustomWidgets/custom_card.dart';
import 'package:store_app/Models/ProductModel.dart';

class HomePage extends StatelessWidget {
  static const String routeName = 'home-page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.cartPlus,
                color: Colors.black,
              ))
        ],
        centerTitle: true,
        title: Text(
          'New Trend',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0,right: 16,top: 70),
        child: FutureBuilder<List<ProductMD>> (
          future: GetAllProductsService().getAllProducts(),
          builder: (context, snapshot) {
            if(snapshot.hasData){
              List<ProductMD> products = snapshot.data!;
              return GridView.builder(
                clipBehavior: Clip.none,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 50

                ),
                itemBuilder: (context, index) => CardWidget(productMD: products[index],),
                itemCount: products.length,
              );
            }else{
             return Center(child: CircularProgressIndicator(),);
            }
          },
        ),
      ),
    );
  }
}
