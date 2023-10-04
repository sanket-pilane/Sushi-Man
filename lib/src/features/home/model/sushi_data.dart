import 'package:flutter/cupertino.dart';
import 'package:shushii_restarount_app/src/constants/constants.dart';
import 'package:shushii_restarount_app/src/features/home/model/ingrediants.dart';
import 'package:shushii_restarount_app/src/features/home/model/sushi.dart';

class SushiData extends ChangeNotifier {
  int increment = 1;
  int total = 0;

  List<Sushi> sushi = [
    Sushi(
        name: "Original Sushi",
        imagePath: kSushi1Image,
        price: 21.00,
        rating: 4.2),
    Sushi(
        name: "Shrimp Sushi",
        imagePath: kSushi2Image,
        price: 20.0,
        rating: 4.5),
    Sushi(
        name: "SukiYaki", imagePath: kSukiYakiImage, price: 18.0, rating: 4.7),
    Sushi(name: "Tofu", imagePath: kTofuImage, price: 25.0, rating: 4.3),
  ];

  List<Ingrediats> ingrediats = [
    Ingrediats(imagePath: kRiceImage, name: "Rice"),
    Ingrediats(imagePath: kToroImage, name: "Toro"),
    Ingrediats(imagePath: kMushroomImage, name: "Mushroom"),
    Ingrediats(imagePath: kSoupImage, name: "Soup"),
  ];

  void incrementSushi() {
    increment++;
    notifyListeners();
  }

  void decrementSushi() {
    if (increment > 0) {
      increment--;
    }
    notifyListeners();
  }

  void totalAmout(int price) {
    total = price * increment;
  }

  List<Sushi> cart = [];

  void addToCart(Sushi eachSushi) {
    for (int i = 0; i < increment; i++) {
      cart.add(eachSushi);
      notifyListeners();
    }
  }

  void removeSushi(Sushi eachsushi) {
    cart.remove(eachsushi);
    notifyListeners();
  }

  String totalCatPrice() {
    double cartTotal = 0;
    for (int i = 0; i < cart.length; i++) {
      cartTotal += cart[i].price;
      notifyListeners();
    }
    if (cart.isEmpty) {
      cartTotal = 0;
    }
    return cartTotal.toString();
  }
}
