import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sgt/presentation/authentication_screen/forgot_password_screen.dart';
import 'package:sgt/presentation/authentication_screen/sign_up_screen.dart';
import 'package:sgt/utils/const.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Welcome\nback',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Sign in to continue',
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Email',
                  style: TextStyle(color: Colors.grey),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'johndoe@mail.com', focusColor: primaryColor),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Password',
                  style: TextStyle(color: Colors.grey),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    
                    hintText: '****'),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const ForgotPasswordScreen();
                      }));
                    },
                    child: const Text('Forgot password')),
                const SizedBox(
                  height: 80,
                ),
                Center(
                  child: CupertinoButton(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 130, vertical: 15),
                    color: seconderyColor,
                    child: const Text(
                      'Sign In',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(
                  height: 260,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const SignUpScreen();
                    }));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // mainAxisSize: MainAxisSize.min,
                      children: const [
                        Center(
                          child: Text(
                            "Don't have an account?",
                            style: TextStyle(color: Colors.grey, fontSize: 18),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "Sign Up",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
