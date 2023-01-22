
import 'package:flutter/material.dart';
import 'package:fruits_vegetable_ecommerce_app/homeScreen.dart';
import 'package:fruits_vegetable_ecommerce_app/productDescriptionScreen.dart';

import 'addToCartScreen.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => const HomeScreen(),
        'cart' : (context) => const AddToCart(),
        'description' : (context) => const ProductDescription(),
      },
    ),
  );
}