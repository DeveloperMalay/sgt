import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sgt/helper/email_validator.dart';
import 'package:sgt/helper/password_validator.dart';
import 'package:sgt/presentation/authentication_screen/forgot_password_screen.dart';
import 'package:sgt/presentation/authentication_screen/sign_up_screen.dart';
import 'package:sgt/utils/const.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Form(
              key: _formKey,
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
                    style: TextStyle(color: Colors.grey, fontSize: 17),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Email',
                    style: TextStyle(color: Colors.grey, fontSize: 17),
                  ),
                  TextFormField(
                    controller: _emailController,
                    validator: (input) => input!.isValidEmail()
                        ? null
                        : "! Email ID is Incorrect",
                    decoration: InputDecoration(
                        hintText: 'johndoe@mail.com', focusColor: primaryColor),
                    onChanged: (value) {
                      _formKey.currentState!.validate()
                          ? Text("data")
                          : Text('data');
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Password',
                    style: TextStyle(color: Colors.grey, fontSize: 17),
                  ),
                  TextFormField(
                    controller: _passwordController,
                    validator: (input) => input!.isValidPassword()
                        ? null
                        : "! Password is Incorrect",
                    maxLength: 64,
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: '****',
                        suffixIcon: Icon(
                          Icons.visibility_off_outlined,
                          color: Colors.black,
                          size: 20,
                        )),
                    onChanged: (value) {
                      _formKey.currentState!.validate()
                          ? Text("data")
                          : Text('data');
                    },
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
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 17),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "Sign Up",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
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
      ),
    );
  }
}
