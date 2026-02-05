import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:shop_me/presentation/sign_up/sign_up_screen.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, size: 30),
          onPressed: () {
            Navigator.pop(context);
          },
          splashColor: Colors.transparent,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // big title
            Text(
              "Let's Get Started",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            // Social media buttons
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlutterSocialButton(
                  onTap: () {},
                  buttonType: ButtonType.facebook,
                ),
                FlutterSocialButton(
                  onTap: () {},
                  buttonType: ButtonType.google,
                ),
                FlutterSocialButton(
                  onTap: () {},
                  buttonType: ButtonType.twitter,
                ),
              ],
            ),
            // already have an account? Sign in
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?"),
                    TextButton(onPressed: () {}, child: Text("Sign In")),
                  ],
                ),
                // create an account
                Container(
                  width: double.infinity,
                  height: 80,
                  decoration: BoxDecoration(color: const Color(0xFF9775FA)),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpScreen()),
                      );
                    },
                    child: Text(
                      "Create an Account",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
