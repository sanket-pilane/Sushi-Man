import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shushii_restarount_app/src/features/home/componets/categories_list.dart';
import 'package:shushii_restarount_app/src/features/home/componets/custome_search_bar.dart';
import 'package:shushii_restarount_app/src/features/home/componets/popular_foods.dart';
import 'package:shushii_restarount_app/src/features/home/componets/promo_card.dart';
import 'package:shushii_restarount_app/src/features/home/componets/sushi_tile.dart';
import 'package:shushii_restarount_app/src/features/home/model/categories_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Consumer<GetData>(
          builder: (context, value, child) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                PromoCard(),
                CustomeSearchBar(),
                CategoriesList(),
                SizedBox(
                  height: 20,
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
