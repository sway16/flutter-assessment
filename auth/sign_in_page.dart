import 'package:flutter/material.dart';
import 'package:sign_in_button/sign_in_button.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/Image.jpg'),
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 400,
              width: double.infinity,
              child:Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Quiz',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                        color: Colors.orange,
                        shadows: [
                          BoxShadow(
                            blurRadius: 5,
                            color: Colors.green.shade900,
                            offset: Offset(3,3),
                          ),
                        ]
                    ),
                  ),
                  // with custom text
                  Column(
                    children: [
                      SignInButton(
                        Buttons.google,
                        text: "Sign up with Google",
                        onPressed: () {},
                      ),
                      SizedBox(
                        width: 200.0,
                      ),
                      SignInButtonBuilder(
                        text: 'Sign in with Email',
                        icon: Icons.email,
                        onPressed: () {},
                        backgroundColor: Colors.blueGrey.shade700,
                      ),
                    ],
                  ),

                  Column(
                    children: [
                      Text(
                        'By signing in you are agreeing to our' ,
                        style: TextStyle(color: Colors.grey[800]),
                      ),
                      Text(
                        'Terms and Privacy Policy',
                        style: TextStyle(color: Colors.grey[800]),
                      ),
                    ],
                  ),

                ],
              ) ,
            ),
          ],
        ),
      ),
    );
  }
}
