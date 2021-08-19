import 'package:flutter/widgets.dart';
import '../Models/place.dart';

class GreetPlaces with ChangeNotifier {
  List<Place> _items = [];
  List<Place> get items {
    return [..._items];
  }
}
