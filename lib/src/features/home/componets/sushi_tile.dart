import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shushii_restarount_app/src/constants/constants.dart';
import 'package:shushii_restarount_app/src/features/home/detail.dart';
import 'package:shushii_restarount_app/src/features/home/model/sushi.dart';
import 'package:shushii_restarount_app/src/features/home/model/sushi_data.dart';

class SushiTiles extends StatefulWidget {
  const SushiTiles({super.key});

  @override
  State<SushiTiles> createState() => _SushiTilesState();
}

class _SushiTilesState extends State<SushiTiles> {
  bool changeImage = false;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      child: Consumer<SushiData>(
        builder: (context, value, child) => ListView.builder(
          itemCount: value.sushi.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            Sushi eachSushi = value.sushi[index];
            return GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => DetailScreen(
                  eachSushi: eachSushi,
                ),
              )),
              child: Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {});
                            },
                            child: Image.asset(
                              changeImage != true
                                  ? kLikeImage
                                  : kLikeFilledImage,
                              height: 20,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Image.asset(
                        eachSushi.imagePath,
                        height: 100,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        eachSushi.name,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$${eachSushi.price.toString()}",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Text(eachSushi.rating.toString()),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
