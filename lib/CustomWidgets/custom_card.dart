import 'package:flutter/material.dart';
import 'package:store_app/Models/ProductModel.dart';
import 'package:store_app/Screens/UpdateProductPage/UpdateProductPage.dart';

class CardWidget extends StatelessWidget {
ProductMD productMD;

CardWidget({required this.productMD});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, UpdateProductPage.routeName,arguments: productMD);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  blurRadius: 40,
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 0,
                  offset: Offset(10, 10))
            ]),
            child: Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$ ${productMD.price}',
                          style: TextStyle(fontSize: 16),
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 15,
            bottom: 60,
            top: -35,
            child: Image.network(
              productMD.image,
              height: 100,width: 100,
            ),
          )
          // CachedNetworkImage(
          //   imageUrl: 'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg',
          //   height: 100,
          //   width: double.infinity,
          //   fit: BoxFit.fill,
          //   placeholder: (context, url) =>
          //   const Center(child: CircularProgressIndicator()),
          //   errorWidget: (context, url, error) => const Icon(Icons.error),
          // )
        ],
      ),
    );
  }
}
