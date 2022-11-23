import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../utils/const.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Forgot Password',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 40,
          ),
          const Text(
            'Enter your email and will send you instruction on how to reset it',
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(
            height: 40,
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
            height: 40,
          ),
          Center(
            child: CupertinoButton(
              padding:
                  const EdgeInsets.symmetric(horizontal: 130, vertical: 15),
              color: seconderyColor,
              child: const Text(
                'Send',
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {},
            ),
          ),
        ]),
      ),
    );
  }
}
