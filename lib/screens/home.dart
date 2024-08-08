import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        const Center(child: Text("الرئيسية"),),
        Positioned(
          bottom: screenHeight * 0.01,
          right: screenWidth * 0.02 ,
          child: Column(
            children: [
              FloatingActionButton(
                backgroundColor: Colors.redAccent,
                onPressed: () {},
                tooltip: "مرتجع",
                child: const Icon(Icons.add_business),
              ),
              const SizedBox(height: 20,),
              FloatingActionButton(
                backgroundColor: Colors.greenAccent,
                onPressed: () {},
                tooltip: "فاتورة",
                child: const Icon(Icons.add_shopping_cart),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
