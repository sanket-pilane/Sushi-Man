import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shushii_restarount_app/src/features/home/model/categories_data.dart';

import '../model/categories.dart';

class CategoriesList extends StatefulWidget {
  const CategoriesList({super.key});

  @override
  State<CategoriesList> createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      child: Consumer<GetData>(
        builder: (context, value, child) => ListView.builder(
          itemCount: value.categories.length,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            Categories eachCategories = value.categories[index];
            return GestureDetector(
              onTap: () => setState(() {
                selectedIndex = index;
              }),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      color: selectedIndex == index
                          ? Colors.white
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          eachCategories.imagePath!,
                          height: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          eachCategories.name!,
                          style: TextStyle(
                            color: selectedIndex == index
                                ? Colors.red
                                : Colors.grey.shade800,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )),
              ),
            );
          },
        ),
      ),
    );
  }
}
