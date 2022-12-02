import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sgt/presentation/authentication_screen/password_change_success_screen.dart';
import '../../utils/const.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  bool isvisible = false;
  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'Change Password',
            textScaleFactor: 1.0,
            style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w500)),
          ),
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
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 80,
            ),
            Text(
              'New Password',
              textScaleFactor: 1.0,
              style: GoogleFonts.montserrat(
                  textStyle: TextStyle(color: Colors.grey, fontSize: 18.sp)),
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: '.......', focusColor: primaryColor),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              'Re-Enter New Password',
              textScaleFactor: 1.0,
              style: GoogleFonts.montserrat(
                  textStyle: TextStyle(color: Colors.grey, fontSize: 18.sp)),
            ),
            TextFormField(
              obscureText: isvisible,
              decoration: InputDecoration(
                  hintText: '.......',
                  focusColor: primaryColor,
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isvisible = !isvisible;
                      });
                    },
                    icon: isvisible
                        ? const Icon(
                            Icons.visibility_off_outlined,
                            color: Colors.black,
                            size: 20,
                          )
                        : const Icon(
                            Icons.visibility_outlined,
                            color: Colors.black,
                            size: 20,
                          ),
                  )),
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
                    return const PasswordChangeSuccessScreen();
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
