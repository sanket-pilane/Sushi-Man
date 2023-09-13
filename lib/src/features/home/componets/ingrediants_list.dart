import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shushii_restarount_app/src/features/home/model/ingrediants.dart';
import 'package:shushii_restarount_app/src/features/home/model/sushi_data.dart';

class IngrediantsTiles extends StatelessWidget {
  const IngrediantsTiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SushiData>(
      builder: (context, value, child) => Container(
        height: 40,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: value.ingrediats.length,
          itemBuilder: (context, index) {
            Ingrediats eachIngrediants = value.ingrediats[index];
            return Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Image.asset(
                      eachIngrediants.imagePath,
                      height: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(eachIngrediants.name),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
