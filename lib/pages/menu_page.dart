import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kz_food/components/button.dart';
import 'package:kz_food/components/food_tile.dart';
import 'package:kz_food/models/food.dart';
import 'package:kz_food/theme/colors.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  // Food menu
  List foodMenu = [
    // Doner
    Food(
        name: "Doner",
        price: "1300 KZT",
        imagePath: '/lib/images/doner-kebab.png',
        rating: "4.9"),
    // Shawarma
    Food(
        name: "Shawarma",
        price: "1100 KZT",
        imagePath: '/lib/images/shawarma.png',
        rating: "4.7"),
    // Pita
    Food(
        name: "Pita",
        price: "900 KZT",
        imagePath: '/lib/images/pita.png',
        rating: "4.5"),
    //
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.grey[900],
        ),
        title: Text(
          'Almaty',
          style: TextStyle(color: Colors.grey[900]),
        ),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        // Promo banner
        Container(
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(20),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  // Promo message
                  Text(
                    'Get FREE Ayran',
                    style: GoogleFonts.dmSerifDisplay(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  // Redeem button
                  MyButton(
                    text: "Redeem",
                    onTap: () {},
                  ),
                ],
              ),
              // Image
              Image.asset(
                'lib/images/ayran.png',
                height: 100,
              ),
            ],
          ),
        ),

        const SizedBox(
          height: 25,
        ),

        // Search bar
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),

        // Menu list
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Text("Food Menu"),
        ),

        Expanded(
          child: ListView.builder(
            itemCount: foodMenu.length,
            itemBuilder: (context, index) => FoodTile(
              food: foodMenu[index],
            ),
          ),
        ),

        // Popular food
      ]),
    );
  }
}
