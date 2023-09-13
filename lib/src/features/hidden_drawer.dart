import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:shushii_restarount_app/constants.dart';
import 'package:shushii_restarount_app/src/features/cart/cart_page.dart';
import 'package:shushii_restarount_app/src/features/home/home_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    List<ScreenHiddenDrawer> pages = [
      ScreenHiddenDrawer(
          ItemHiddenMenu(
              name: "Homepage",
              baseStyle: TextStyle(color: Colors.deepPurple),
              selectedStyle: TextStyle(color: Colors.white)),
          HomePage()),
    ];
    return HiddenDrawerMenu(
      leadingAppBar: Icon(
        Icons.menu,
        color: Colors.black,
      ),
      backgroundColorAppBar: Colors.grey.shade300,
      elevationAppBar: 0,
      tittleAppBar: Text(""),
      actionsAppBar: [
        Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.location_on_outlined,
              color: Colors.red,
              size: 25,
            ),
            Text(
              "Jakarta",
              style: GoogleFonts.breeSerif(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ],
        ),
        Spacer(),
        IconButton(
          icon: Icon(
            Icons.shopping_cart,
            size: 30,
            color: Colors.black,
          ),
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => CartPage(),
            ),
          ),
        ),
      ],
      screens: pages,
      backgroundColorMenu: kPrimaryColor,
      withShadow: true,
      isDraggable: true,
    );
  }
}
