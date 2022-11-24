import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sgt/presentation/authentication_screen/sign_in_screen.dart';
import '../../utils/const.dart';

class PasswordChangeSuccessScreen extends StatefulWidget {
  const PasswordChangeSuccessScreen({super.key});

  @override
  State<PasswordChangeSuccessScreen> createState() =>
      _PasswordChangeSuccessScreenState();
}

class _PasswordChangeSuccessScreenState
    extends State<PasswordChangeSuccessScreen> {
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
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Center(
            child: Container(
              height: 130,
              width: 250,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/sgt_logo_dark.png"),
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              height: 150,
              width: 250,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/success.png"),
                ),
              ),
            ),
          ),
          Center(
            child: Text(
              "Password Changed\nSuccessfully!",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: primaryColor,
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 250,
          ),
          const Center(
            child: Text(
              'You can now log-in to your SocioMee account',
              style: TextStyle(fontSize: 12),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: CupertinoButton(
              padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
              color: primaryColor,
              child: const Text(
                'BACK TO LOGIN',
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return const SignInScreen();
                }));
              },
            ),
          ),
        ]),
      ),
    );
  }
}