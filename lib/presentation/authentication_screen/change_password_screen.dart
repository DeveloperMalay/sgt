import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sgt/presentation/authentication_screen/password_change_success_screen.dart';
import '../../utils/const.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
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
          const SizedBox(
            height: 40,
          ),
          const Text(
            'Change Password',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            'New Password',
            style: TextStyle(color: Colors.grey),
          ),
          TextFormField(
            decoration:
                InputDecoration(hintText: '******', focusColor: primaryColor),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            'Re-Enter New Password',
            style: TextStyle(color: Colors.grey),
          ),
          TextFormField(
            decoration:
                InputDecoration(hintText: '******', focusColor: primaryColor),
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
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const PasswordChangeSuccessScreen();
                }));
              },
            ),
          ),
        ]),
      ),
    );
  }
}
