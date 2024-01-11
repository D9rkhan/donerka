import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kz_food/models/food.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  const FoodTile({
    super.key,
    required this.food,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          // Image
          Image.asset(
            food.imagePath,
            height: 140,
          ),

          // Text
          Text(
            food.name,
            style: GoogleFonts.dmSerifDisplay(fontSize: 20),
          ),

          // Price + rating
          SizedBox(
            width: 160,
            child: Row(
              children: [
                //price
                Text(food.price),

                //rating
                Icon(Icons.star),
                Text(food.rating),
              ],
            ),
          )
        ],
      ),
    );
  }
}
