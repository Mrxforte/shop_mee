import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
            Column(
              children: [
                Text(
                  "Welcome",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Please enter your details to create an account",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            // form  username email password and remenber me checkbox without borders
            Padding(
              padding: const EdgeInsets.only(left: 32, right: 32),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Username",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Username",
                        border: UnderlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Email",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Email",
                        label: Text("Email"),
                        border: UnderlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Password",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Password",
                        border: UnderlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Remember me",
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                        Switch.adaptive(
                          value: false,
                          onChanged: (bool value) {},
                          inactiveTrackColor: Colors.green,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // terms and conditions with grey text
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "By connecting your account confirm that you agree\n with our Term and Condition",
                      style: TextStyle(color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                // create an account
                Container(
                  width: double.infinity,
                  height: 80,
                  decoration: BoxDecoration(color: const Color(0xFF9775FA)),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Sign Up",
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
