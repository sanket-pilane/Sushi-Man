import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shushii_restarount_app/src/features/cart/cart_page.dart';
import 'package:shushii_restarount_app/src/features/home/componets/categories_list.dart';
import 'package:shushii_restarount_app/src/features/home/componets/custome_search_bar.dart';
import 'package:shushii_restarount_app/src/features/home/componets/popular_foods.dart';
import 'package:shushii_restarount_app/src/features/home/componets/promo_card.dart';
import 'package:shushii_restarount_app/src/features/home/componets/sushi_tile.dart';
import 'package:shushii_restarount_app/src/features/home/model/categories_data.dart';
import 'package:shushii_restarount_app/src/services/firebase_auth_methods.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;

  void signOut() async {
    FirebaseAuthMethod(FirebaseAuth.instance).signOut(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.exit_to_app_outlined,
            color: Colors.black,
          ),
          onPressed: () => signOut(),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.shopping_bag,
              color: Colors.black,
            ),
            onPressed: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => CartPage(),
            )),
          ),
        ],
      ),
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Consumer<GetData>(
          builder: (context, value, child) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(
                  height: 10,
                ),
                PromoCard(),
                CustomeSearchBar(),
                CategoriesList(),
                SizedBox(
                  height: 10,
                ),
                SushiTiles(),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Popular Food",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                PopularFoods(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
