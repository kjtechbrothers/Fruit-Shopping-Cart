import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fruit_shopping_cart/product_list_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 3),
            ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProductListScreen())) );
  }

  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Image(image: AssetImage('asset/fruit_cart.png')),
      ),
    );
  }
}
