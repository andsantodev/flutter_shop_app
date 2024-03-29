import 'package:flutter/material.dart';
import 'package:flutter_shop_app/constants.dart';
import 'package:flutter_shop_app/models/product.dart';
import 'package:flutter_shop_app/pages/page_details/components/body.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Details extends StatelessWidget {
  
  final Product product; 
  
  const Details({Key key, this.product}) : super(key: key);@override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }

  // Barra de navegaçãp
  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset('assets/icons/back.svg', color: Colors.white,),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset('assets/icons/search.svg', color: Colors.white,),
          onPressed: (){}
        ),
        IconButton(
          icon: SvgPicture.asset('assets/icons/cart.svg', color: Colors.white,),
          onPressed: (){}
        ),
        SizedBox(width: kDefaultPaddin / 2,)
      ],
    );
  }
}