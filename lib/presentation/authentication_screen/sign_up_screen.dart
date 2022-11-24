import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sgt/presentation/authentication_screen/verification_screen.dart';
import 'package:sgt/utils/const.dart';

import 'sign_in_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Welcome\nuser',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(50)),
                          child: Text(''),
                        ),
                        Positioned(
                          top: 65,
                          left: 70,
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(50)),
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Sign up to join',
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Name',
                  style: TextStyle(color: Colors.grey),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Jenny Doe', focusColor: primaryColor),
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
                  'Phone',
                  style: TextStyle(color: Colors.grey),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: '(808)628 8343', focusColor: primaryColor),
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
                  decoration: const InputDecoration(hintText: '****'),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Re-Enter Password',
                  style: TextStyle(color: Colors.grey),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(hintText: '****'),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // mainAxisSize: MainAxisSize.min,
                  children: const [
                    Center(
                      child: Text(
                        "I agree to the",
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "Terms of Service",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
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
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const VerificationScreen();
                      }));
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return const SignInScreen();
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
                            "Have an account?",
                            style: TextStyle(color: Colors.grey, fontSize: 18),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "Sign In",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ]),
        ),
      )),
    );
  }
}
