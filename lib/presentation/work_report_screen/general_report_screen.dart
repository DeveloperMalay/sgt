import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/const.dart';
import '../home.dart';

class GeneralReportScreen extends StatefulWidget {
  const GeneralReportScreen({super.key});

  @override
  State<GeneralReportScreen> createState() => _GeneralReportScreenState();
}

class _GeneralReportScreenState extends State<GeneralReportScreen> {
  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: white,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        backgroundColor: white,
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'General\nReport',
                style: TextStyle(fontSize: 40.sp, fontWeight: FontWeight.bold),
                textScaleFactor: 1.0,
              ),
              const SizedBox(
                height: 26,
              ),
              Text(
                'Title',
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(fontSize: 17.sp, color: Colors.grey)),
                textScaleFactor: 1.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: 'Something here',
                    hintStyle: TextStyle(color: grey),
                    focusColor: primaryColor),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Notes',
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(fontSize: 17.sp, color: Colors.grey)),
                textScaleFactor: 1.0,
              ),
              const SizedBox(
                height: 18,
              ),
              TextFormField(
                maxLines: 8,
                decoration: InputDecoration(
                    border:
                        OutlineInputBorder(borderSide: BorderSide(color: grey)),
                    hintText: 'Something here',
                    hintStyle: TextStyle(color: grey),
                    focusColor: primaryColor),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Upload Record Sample',
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(fontSize: 17.sp, color: Colors.grey)),
                textScaleFactor: 1.0,
              ),
              const SizedBox(
                height: 20,
              ),
              DottedBorder(
                color: Colors.grey,
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Center(
                      child: Icon(
                    Icons.add,
                    color: Colors.grey,
                    size: 50,
                  )),
                ),
              ),
            ],
          ),
        )),
        bottomNavigationBar: SizedBox(
          height: 130,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Divider(
                color: Colors.grey,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                child: Center(
                  child: CupertinoButton(
                      disabledColor: seconderyColor,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 150, vertical: 15),
                      color: primaryColor,
                      child: const Text(
                        'Send',
                        style: TextStyle(fontSize: 20),
                        textScaleFactor: 1.0,
                      ),
                      onPressed: () {}),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
