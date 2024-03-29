import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kz_food/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 138, 60, 55),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Налево сдвигаются
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                height: 25,
              ),

              //Shop name
              Text(
                "DONER MAN",
                style: GoogleFonts.dmSerifDisplay(
                  fontSize: 28,
                  color: Colors.white,
                ),
              ),

              const SizedBox(
                height: 25,
              ),

              //Icon
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Image.asset('lib/images/shawarma.png'),
              ),

              // title
              Text(
                "The taste of Almaty night",
                style: GoogleFonts.dmSerifDisplay(
                  fontSize: 44,
                  color: Colors.white,
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              // Subtitle
              Text(
                "Feel the taste of the most popular food from anywhere and anytime",
                style: TextStyle(
                  color: Colors.grey[300],
                  height: 2,
                ),
              ),

              const SizedBox(
                height: 25,
              ),

              // Get started button
              MyButton(
                text: "Get Started",
                onTap: (){
                  // Go to menu page
                  Navigator.pushNamed(context, '/menupage');
                },
              )
            ],
          ),
        ));
  }
}
