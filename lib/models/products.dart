import 'package:flutter/material.dart';

import './product.dart';

class Products with ChangeNotifier {
  List<Product> allproducts = [];
  Product? selectedProduct;

  Product findById(productId) {
    return allproducts.firstWhere((prodId) => prodId.id == productId);
  }

  // void addProduct() {
  //   _allproducts.add(value);
  //   notifyListeners();
  // }
}
