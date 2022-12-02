import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sgt/presentation/authentication_screen/change_password_screen.dart';
import '../../utils/const.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: Scaffold(
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
          centerTitle: true,
          title: Text(
            'Forgot Password',
            textScaleFactor: 1.0,
            style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w500)),
          ),
        ),
        body: Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 40,
            ),
            Text(
              'Enter your email and will send you instruction on how to reset it',
              textScaleFactor: 1.0,
              style: GoogleFonts.montserrat(textStyle: TextStyle(fontSize: 18)),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              'Email',
              textScaleFactor: 1.0,
              style: GoogleFonts.montserrat(
                  textStyle: TextStyle(color: Colors.grey, fontSize: 18.sp)),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter Registerded Email',
                focusColor: primaryColor,
                hintStyle: GoogleFonts.montserrat(
                    textStyle: TextStyle(color: grey, fontSize: 15.sp)),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Center(
              child: CupertinoButton(
                padding:
                    const EdgeInsets.symmetric(horizontal: 130, vertical: 15),
                color: seconderyColor,
                child: Text(
                  'Send',
                  textScaleFactor: 1.0,
                  style: GoogleFonts.montserrat(
                      textStyle: TextStyle(fontSize: 17.sp)),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const ChangePasswordScreen();
                  }));
                },
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
