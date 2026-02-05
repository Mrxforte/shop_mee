import 'package:flutter/material.dart';
import 'package:shop_me/presentation/get_started/get_started_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF9775FA),
      body: Stack(
        children: [
          Center(
            child: Image.asset('assets/images/man.png', fit: BoxFit.fitWidth),
          ),

          Positioned(
            bottom: 50,
            left: 30,
            right: 30,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      "Look Good, Feel Good",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Create your individual & unique style and look amazing everyday.',
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        CustomButton(
                          text: "Men",
                          onPressed: () {},
                          color: const Color(0xFF9775FA),
                        ),
                        Spacer(),
                        CustomButton(text: "Women", onPressed: () {}),
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => GetStartedScreen(),
                          ),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                          Colors.transparent,
                        ),
                        overlayColor: WidgetStateProperty.all(
                          Colors.transparent,
                        ),
                      ),
                      child: Text("Skip"),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.color = const Color(0xFF9775FA),
  });
  final String text;
  final VoidCallback onPressed;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        child: Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width * 0.35,
          height: 50,
          decoration: BoxDecoration(
            color: text == "Men" ? color : Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            text,
            style: TextStyle(
              color: text == "Men" ? Colors.white : color,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
