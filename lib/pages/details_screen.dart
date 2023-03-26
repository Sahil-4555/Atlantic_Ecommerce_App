import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:atlantic_v2/constants.dart';
import 'package:atlantic_v2/models/Product.dart';
import 'package:atlantic_v2/components/body.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({super.key, required this.product});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each product have a color
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(
        product: product,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'lib/images/back.svg',
          color: Colors.black,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "lib/images/search.svg",
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset(
            "lib/images/cart.svg",
            color: Colors.black,
          ),
          onPressed: () {
            GoogleSignIn().signOut();
            FirebaseAuth.instance.signOut();
            Navigator.pop(context);
          },
        ),
        const SizedBox(width: kDefaultPadding / 2)
      ],
    );
  }
}
