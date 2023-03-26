// import 'dart:html';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_svg/svg.dart';
import 'package:atlantic_v2/constants.dart';
import 'package:atlantic_v2/pages/body.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;

  // // list of hardware types
  // final List homePageTypes = [
  //   // [Hardware Type, isSelected]
  //   [
  //     'Hinges',
  //     true,
  //   ],
  //   [
  //     'TowerBolt',
  //     false,
  //   ],
  //   [
  //     'Handles',
  //     false,
  //   ],
  //   [
  //     'Glasses',
  //     false,
  //   ],
  // ];
  //
  // //User Tapped On
  // void TypeSelected(int index) {
  //   setState(() {
  //     for (int i = 0; i < homePageTypes.length; i++) {
  //       homePageTypes[i][1] = false;
  //     }
  //     homePageTypes[index][1] = true;
  //   });
  // }
  //
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     backgroundColor: Colors.grey[900],
  //     appBar: AppBar(
  //       elevation: 0,
  //       backgroundColor: Colors.transparent,
  //       // leading: const Icon(Icons.menu),
  //       actions: const [
  //         Padding(
  //           padding: EdgeInsets.only(right: 25.0),
  //           child: Icon(Icons.shopping_cart),
  //         )
  //       ],
  //     ),
  //     bottomNavigationBar: BottomNavigationBar(
  //       showSelectedLabels: false,
  //       showUnselectedLabels: false,
  //       type: BottomNavigationBarType.fixed,
  //       iconSize: 26,
  //       onTap: (val) {
  //         setState(() {});
  //       },
  //       backgroundColor: Colors.black,
  //       items: <BottomNavigationBarItem>[
  //         BottomNavigationBarItem(
  //           icon: IconButton(
  //             icon: const Icon(
  //               Icons.home,
  //               color: Colors.white,
  //             ),
  //             onPressed: () {
  //               Navigator.push(
  //                 context,
  //                 MaterialPageRoute(builder: (context) => const HomePage()),
  //               );
  //             },
  //           ),
  //           label: 'HomePage',
  //         ),
  //         BottomNavigationBarItem(
  //           icon: IconButton(
  //             icon: const Icon(
  //               Icons.favorite,
  //               color: Colors.white,
  //             ),
  //             onPressed: () {
  //               Navigator.push(
  //                 context,
  //                 MaterialPageRoute(builder: (context) => const Favorites()),
  //               );
  //             },
  //           ),
  //           label: 'Favorites',
  //         ),
  //         BottomNavigationBarItem(
  //           icon: IconButton(
  //             icon: const Icon(
  //               Icons.person,
  //               color: Colors.white,
  //             ),
  //             onPressed: () {
  //               Navigator.push(
  //                 context,
  //                 MaterialPageRoute(builder: (context) => const UserDetails()),
  //               );
  //             },
  //           ),
  //           label: 'Person',
  //         ),
  //         BottomNavigationBarItem(
  //           icon: IconButton(
  //               icon: const Icon(
  //                 Icons.dashboard,
  //                 color: Colors.white,
  //               ),
  //               onPressed: () {
  //                 Navigator.push(
  //                   context,
  //                   MaterialPageRoute(builder: (context) => const Dashboard()),
  //                 );
  //               }),
  //           label: 'Dashboard',
  //         ),
  //       ],
  //     ),
  //     body: Column(
  //         children: [
  //           const SizedBox(
  //             height: 15,
  //           ),
  //           Padding(
  //             padding: const EdgeInsets.symmetric(horizontal: 25.0),
  //             child: Center(
  //               child: Text(
  //                 "Find The best hardware for your home",
  //                 style: GoogleFonts.bebasNeue(fontSize: 41, color: Colors.white),
  //               ),
  //             ),
  //           ),
  //
  //           const SizedBox(height: 20),
  //
  //           Padding(
  //             padding: const EdgeInsets.symmetric(horizontal: 20.0),
  //             child: TextField(
  //               style: const TextStyle(
  //                 color: Colors.white,
  //               ),
  //               decoration: InputDecoration(
  //                 prefixIcon: const Icon(
  //                   Icons.search,
  //                   color: Colors.white,
  //                 ),
  //                 suffixIcon: const Icon(
  //                   Icons.filter_list,
  //                   color: Colors.white,
  //                 ),
  //                 hintText: 'Find Your Hardware Here....',
  //                 hintStyle: const TextStyle(
  //                   color: Colors.white,
  //                 ),
  //                 focusedBorder: const OutlineInputBorder(),
  //                 enabledBorder: OutlineInputBorder(
  //                   borderSide: BorderSide(color: Colors.grey.shade600),
  //                 ),
  //               ),
  //             ),
  //           ),
  //           const SizedBox(height: 25.0),
  //
  //           SizedBox(
  //             height: 25.0,
  //             child: ListView.builder(
  //               scrollDirection: Axis.horizontal,
  //               itemCount: homePageTypes.length,
  //               itemBuilder: (context, index) {
  //                 return HomePageTypes(
  //                   hardwareType: homePageTypes[index][0],
  //                   isSelected: homePageTypes[index][1],
  //                   onTap: () {
  //                     TypeSelected(index);
  //                   },
  //                 );
  //               },
  //             ),
  //           ),
  //
  //           const SizedBox(height: 15),
  //
  //           //Horizontal ListView Of Atlantic Products.
  //           // Expanded(
  //           //   child: ListView(
  //           //     scrollDirection: Axis.horizontal,
  //           //     children: [
  //           //       HomePageSlider(
  //           //         sliderImagePath: 'lib/images/hinges.jpg',
  //           //         sliderName: 'Atlantic Hinges',
  //           //         productPrice: '400',
  //           //       ),
  //           //       HomePageSlider(
  //           //         sliderImagePath: 'lib/images/hinges.jpg',
  //           //         sliderName: 'Atlantic Hinges',
  //           //         productPrice: '400',
  //           //       ),
  //           //       HomePageSlider(
  //           //         sliderImagePath: 'lib/images/hinges.jpg',
  //           //         sliderName: 'Atlantic Hinges',
  //           //         productPrice: '400',
  //           //       ),
  //           //       HomePageSlider(
  //           //         sliderImagePath: 'lib/images/hinges.jpg',
  //           //         sliderName: 'Atlantic Hinges',
  //           //         productPrice: '400',
  //           //       ),
  //           //       HomePageSlider(
  //           //         sliderImagePath: 'lib/images/hinges.jpg',
  //           //         sliderName: 'Atlantic Hinges',
  //           //         productPrice: '400',
  //           //       ),
  //           //     ],
  //           //   ),
  //           // ),
  //         ],
  //       ),
  //   );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("lib/images/back.svg"),
        onPressed: () {},
        color: Colors.black,
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "lib/images/search.svg",
            // By default our  icon color is white
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset(
            "lib/images/cart.svg",
            // By default our  icon color is white
            color: Colors.black,
          ),
          onPressed: () {
            GoogleSignIn().signOut();
            FirebaseAuth.instance.signOut();
            // Navigator.pop(context);
          },
        ),
        const SizedBox(width: kDefaultPadding / 2)
      ],
    );
  }
}
