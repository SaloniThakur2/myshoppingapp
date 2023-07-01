import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myshoppingapp/components/product_card.dart';

import 'package:myshoppingapp/constants.dart';
import 'package:myshoppingapp/models/Product.dart';
import 'package:myshoppingapp/screens/home/components/icon_btn_with_counter.dart';
import 'package:myshoppingapp/screens/home/search_field.dart';
import 'package:myshoppingapp/size_config.dart';

import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'popular_products.dart';
import 'section_title.dart';
import 'special_offers.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(30)),
            DiscountBanner(),
            SizedBox(height: getProportionateScreenWidth(30)),
            Categories(),
            SizedBox(height: getProportionateScreenWidth(30)),
            SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(30)),
            PopularProducts(),
            ],
          ),
        ),  
     );
  }
}















