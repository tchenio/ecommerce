

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/components/quantity_dialog.dart';
class CartProduct extends StatefulWidget {
  final dynamic cartProductName;
  final dynamic cartProductPicture;
  final dynamic cartProductOldPrice;
  final dynamic cartProductPrice;
  final dynamic cartProductQuantity;

  const CartProduct(
      {Key? key,
        this.cartProductName,
        this.cartProductPicture,
        this.cartProductOldPrice,
        this.cartProductPrice,
        this.cartProductQuantity})
      : super(key: key);

  @override
  _CartProductState createState() => _CartProductState();
}

class _CartProductState extends State<CartProduct> {
  @override
  Widget build(BuildContext context) {
    return Card(
        borderOnForeground: false,
        child: ListTile(
          title: Text(widget.cartProductName),
          subtitle: Text("${widget.cartProductPrice}\u20ac"),
          trailing: QuantityDialog(count: widget.cartProductQuantity),



        ),




      );
      /*



                Expanded(
                    flex:2,
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_up)),


                ),
                Expanded(
                      flex:2,
                        child: Text("${widget.cartProductQuantity}"),
                    ),

                Expanded(
                  flex:2,
                        child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_down)),

                ),


      ///////////////////////////////////////////////////////////////

      child: ListTile(
        title: Text(widget.cartProductName),
        subtitle: Row(
          children: <Widget>[

            const Padding(
                padding: EdgeInsets.all(5.0),
                child: Text("Price :")),
            //Text("${widget.cartProductQuantity * widget.cartProductPrice}")
          ],
        ),
          trailing: Column(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_up)),
             Text("${widget.cartProductQuantity}"),
              IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_down),)

            ],
          ),
      ),*/


  }
}
