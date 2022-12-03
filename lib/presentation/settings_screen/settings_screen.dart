import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/const.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isSwitched = false;
  var textValue = 'Switch is OFF';

  void toggleSwitch(boolvalue) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'SwitchButton is ON';
      });
      print('SwitchButton is ON');
    } else {
      setState(() {
        isSwitched = false;
        textValue = 'SwitchButton is OFF';
      });
      print('SwitchButton is OFF');
    }
  }

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
        centerTitle: true,
        title: Text(
          'Settings',
          textScaleFactor: 1.0,
          style: GoogleFonts.montserrat(
              textStyle: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.w600)),
        ),
      ),
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                'Account',
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                        fontSize: 15.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Container(
                  height: 34,
                  width: 34,
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(5)),
                  child: Icon(
                    Icons.lock,
                    color: white,
                    size: 20,
                  )),
              title: Text(
                'Change Password',
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                  fontSize: 15.sp,
                  color: Colors.black,
                )),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 72.0),
              child: Divider(
                color: Colors.grey,
              ),
            ),
            ListTile(
              leading: Container(
                  height: 34,
                  width: 34,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Icon(
                      Icons.person,
                      color: white,
                      size: 20,
                    ),
                  )),
              title: Text(
                'Edit Account Details',
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                  fontSize: 15.sp,
                  color: Colors.black,
                )),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 72.0),
              child: Divider(
                color: Colors.grey,
              ),
            ),
            ListTile(
              leading: Container(
                  height: 34,
                  width: 34,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Icon(
                      Icons.collections,
                      color: white,
                      size: 20,
                    ),
                  )),
              title: Text(
                'Terms and Conditions',
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                  fontSize: 15.sp,
                  color: Colors.black,
                )),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 72.0),
              child: Divider(
                color: Colors.grey,
              ),
            ),
            ListTile(
              leading: Container(
                height: 34,
                width: 34,
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: FaIcon(
                    FontAwesomeIcons.solidHand,
                    color: white,
                    size: 20,
                  ),
                ),
              ),
              title: Text(
                'Privacy Policy ',
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                  fontSize: 15.sp,
                  color: Colors.black,
                )),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 72.0),
              child: Divider(
                color: Colors.grey,
              ),
            ),
            ListTile(
              leading: Container(
                height: 34,
                width: 34,
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: Icon(
                    Fontisto.world_o,
                    color: white,
                    size: 20,
                  ),
                ),
              ),
              title: Text(
                'Languages',
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                  fontSize: 15.sp,
                  color: Colors.black,
                )),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 72.0),
              child: Divider(
                color: Colors.grey,
              ),
            ),
            ListTile(
              leading: Container(
                height: 34,
                width: 34,
                // padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: FaIcon(
                    FontAwesomeIcons.solidHand,
                    color: white,
                    size: 20,
                  ),
                ),
              ),
              // child: Icon(
              //   Icons.lock,
              //   color: white,
              //   size: 20,
              // )),
              title: Text(
                'Help & Support ',
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                  fontSize: 15.sp,
                  color: Colors.black,
                )),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 72.0),
              child: Divider(
                color: Colors.grey,
              ),
            ),
            ListTile(
              leading: Container(
                  height: 34,
                  width: 34,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Icon(
                      Icons.logout,
                      color: white,
                      size: 20,
                    ),
                  )),
              title: Text(
                'Sign Out',
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                  fontSize: 15.sp,
                  color: Colors.black,
                )),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 72.0),
              child: Divider(
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                'Notification Alert ',
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                        fontSize: 15.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Text Messages',
                    style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                      fontSize: 15.sp,
                      color: Colors.black,
                    )),
                  ),
                  Switch(
                    onChanged: toggleSwitch,
                    value: isSwitched,
                    activeColor: grey,
                    activeTrackColor: primaryColor,
                    inactiveThumbColor: primaryColor,
                    inactiveTrackColor: grey,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Divider(
                color: Colors.grey,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
