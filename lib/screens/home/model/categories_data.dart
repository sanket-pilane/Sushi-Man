import 'package:flutter/cupertino.dart';
import 'package:shushii_restarount_app/constants.dart';
import 'package:shushii_restarount_app/screens/home/model/categories.dart';

class GetData extends ChangeNotifier {
  List<Categories> categories = [
    Categories(name: "Sushi", imagePath: kSushi1Image),
    Categories(name: "Ramen", imagePath: kRamenImage),
    Categories(name: "Sushi", imagePath: kSushi1Image),
    Categories(name: "Ramen", imagePath: kRamenImage),
  ];
}
