import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store_app/ApiManager/Services/uodateProduct.dart';
import 'package:store_app/CustomWidgets/custom_button.dart';
import 'package:store_app/Models/ProductModel.dart';

import '../../CustomWidgets/custom_text_field.dart';

class UpdateProductPage extends StatefulWidget {
  static const String routeName = 'updatePage';

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  String? productName, desc, price, image;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    ProductMD productMD =
        ModalRoute.of(context)!.settings.arguments as ProductMD;
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            ),
          ),
          title: Text(
            'Update Product',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                TextFormFieldWidget(
                  onChanged: (data) {
                    productName = data;
                  },
                  hintText: 'Product Name',
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormFieldWidget(
                  onChanged: (data) {
                    desc = data;
                  },
                  hintText: 'Description',
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormFieldWidget(
                  inputType: TextInputType.number,
                  onChanged: (data) {
                    price = data;
                  },
                  hintText: 'Price',
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormFieldWidget(
                  onChanged: (data) {
                    image = data;
                  },
                  hintText: 'Image',
                ),
                SizedBox(
                  height: 50,
                ),
                ButtonWidget(
                  buttonTxt: 'Update',
                  onTap: ()async {
                    isLoading = true;
                    setState(() {});
                     updateProduct(productMD);
                    try{
                    print('Success');
                    //Todo: snack-bar
                    }catch(e){
                      print('failed');
                      //Todo: snack-bar
                      print(e.toString());
                    }
                    isLoading = false;
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> updateProduct(ProductMD product)async {
   await UpdateProductService().updateProduct(
     id : product.id,
        title: productName == null ? product.title : productName!,
        price: price == null ? product.price.toString() :price! ,
        description: desc == null ? product.description : desc!,
        image: image == null ? product.image:image!,
        category: product.category);
  }
}
