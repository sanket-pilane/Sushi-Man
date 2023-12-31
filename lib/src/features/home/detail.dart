import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shushii_restarount_app/src/constants/constants.dart';
import 'package:shushii_restarount_app/src/features/home/componets/ingrediants_list.dart';
import 'package:shushii_restarount_app/src/features/home/model/sushi.dart';
import 'package:shushii_restarount_app/src/features/home/model/sushi_data.dart';
import 'package:shushii_restarount_app/src/features/landing_page/componets/my_button.dart';

// ignore: must_be_immutable
class DetailScreen extends StatefulWidget {
  Sushi eachSushi;

  DetailScreen({
    super.key,
    required this.eachSushi,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Consumer<SushiData>(
          builder: (context, value, child) => Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  value.isLiked = false;
                                  Navigator.pop(context);
                                },
                                child: Icon(
                                  Icons.arrow_back,
                                  size: 30,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  value.addToFavourite(widget.eachSushi);
                                  setState(() {});
                                },
                                child: Image.asset(
                                    value.isLiked
                                        ? kLikeFilledImage
                                        : kLikeImage,
                                    height: 30),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 30),
                            child: Image.asset(
                              widget.eachSushi.imagePath,
                              height: 230,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 40,
                              ),
                              Text(
                                widget.eachSushi.rating.toString(),
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            widget.eachSushi.name,
                            style: GoogleFonts.raleway(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Ingrediants",
                            style: TextStyle(
                              color: Colors.grey.shade800,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          IngrediantsTiles(),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Description ",
                            style: TextStyle(
                              color: Colors.grey[800],
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            kSushiDesc,
                            style: TextStyle(
                                color: Colors.grey[800],
                                fontSize: 16,
                                height: 2),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$ ${widget.eachSushi.price * value.increment}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () => value.decrementSushi(),
                              icon: Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              child: Text(
                                value.increment.toString(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                            IconButton(
                              onPressed: () => value.incrementSushi(),
                              icon: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    MyButton(
                      title: "Add to Cart",
                      onTap: () {
                        value.addToCart(widget.eachSushi);
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
