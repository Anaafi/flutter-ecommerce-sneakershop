import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Air jordan',
      price: '250',
      description: 'cool shoe',
      imagePath: 'lib/images/ss.png',
    ),
    Shoe(
      name: 'Nike',
      price: '250',
      description: 'cool shoe',
      imagePath: 'lib/images/s3.png',
    ),
    Shoe(
      name: 'Air jordan',
      price: '250',
      description: 'cool shoe',
      imagePath: 'lib/images/ss.png',
    ),
    Shoe(
      name: 'Air jordan',
      price: '250',
      description: 'cool shoe',
      imagePath: 'lib/images/s3.png',
    ),
  ];

  //list of items in user cart
  List<Shoe> userCart = [];

  //get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
