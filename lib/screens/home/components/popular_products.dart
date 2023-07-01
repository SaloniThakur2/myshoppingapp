import 'package:flutter/material.dart';
import 'package:myshoppingapp/components/product_card.dart';
import 'package:myshoppingapp/models/Product.dart';

import '../../../size_config.dart';
import 'section_title.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Popular Product",
          press: () {},
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...List.generate(
                  demoProducts.length, 
                  (index) => ProductCard(
                    product: demoProducts[index],
                  ),
                ),
                SizedBox(width: getProportionateScreenWidth(20)),
              ],
            ),
          ),
        ],
      );
  }
}