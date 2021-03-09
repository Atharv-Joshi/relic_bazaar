import 'package:flutter/material.dart';
import 'package:retro_shopping/helpers/constants.dart';
import 'package:retro_shopping/helpers/slide_route.dart';
import 'package:retro_shopping/widgets/product/product_page.dart';

class ProductCard extends StatelessWidget {
  final String text;
  final String owner;
  final String amount;
  final String image;
  final String seller;
  final int height;

  const ProductCard(
      {Key key,
      this.text,
      this.owner,
      this.amount,
      this.image,
      this.seller,
      this.height})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            SlideBottomRoute(
                page: ProductPage(
              text: text,
              owner: owner,
              image: image,
              prodHeight: height,
              seller: seller,
              amount: amount,
            )));
      },
      child: Container(
        width: 155.0,
        height: 257.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: RelicColors.primaryColor,
          border: Border.all(width: 1.0, color: RelicColors.primaryBlack),
          boxShadow: [
            BoxShadow(
              color: RelicColors.secondaryBlack,
              offset: Offset(0, 3),
              blurRadius: 6,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  height: 1,
                ),
                textAlign: TextAlign.left,
              ),
              Text(
                owner,
                style: TextStyle(
                  fontSize: 11,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  height: 1.5,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                amount,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  height: 0.5,
                ),
                textAlign: TextAlign.left,
              ),
              Transform.translate(
                offset: Offset(16, 5),
                child: Image.asset(
                  image,
                  height: 148,
                  width: 154,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
