import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shushii_restarount_app/constants.dart';
import 'package:shushii_restarount_app/screens/home/detail.dart';

import 'package:shushii_restarount_app/screens/home/model/sushi.dart';
import 'package:shushii_restarount_app/screens/home/model/sushi_data.dart';

class PopularFoods extends StatelessWidget {
  const PopularFoods({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SushiData>(
      builder: (context, value, child) => Expanded(
          child: ListView.builder(
        itemCount: value.sushi.length,
        itemBuilder: (context, index) {
          Sushi eachSushi = value.sushi[index];

          return GestureDetector(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DetailScreen(eachSushi: eachSushi),
            )),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      eachSushi.imagePath,
                      height: 60,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          eachSushi.name,
                          style: GoogleFonts.raleway(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "\$${eachSushi.price.toString()}",
                              style: GoogleFonts.oswald(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 60,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                                Text(eachSushi.rating.toString()),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    Image.asset(
                      kLikeImage,
                      height: 30,
                    )
                  ],
                ),
              ),
            ),
          );
        },
      )),
    );
  }
}
