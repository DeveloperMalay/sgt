import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/const.dart';
import '../home.dart';

class ParkingReportScreen extends StatefulWidget {
  const ParkingReportScreen({super.key});

  @override
  State<ParkingReportScreen> createState() => _ParkingReportScreenState();
}

class _ParkingReportScreenState extends State<ParkingReportScreen> {
  final Map<String, IconData> _data = Map.fromIterables(
      ['First', 'Second', 'Third'],
      [Icons.filter_1, Icons.filter_2, Icons.filter_3]);
  var value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Parking\nReport',
                  style:
                      TextStyle(fontSize: 40.sp, fontWeight: FontWeight.bold),
                  textScaleFactor: 1.0,
                ),
                const SizedBox(
                  height: 26,
                ),
                Text(
                  'Make',
                  style: GoogleFonts.montserrat(
                      textStyle: TextStyle(fontSize: 17.sp, color: grey)),
                  textScaleFactor: 1.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Something here',
                      hintStyle: GoogleFonts.montserrat(
                        textStyle: const TextStyle(color: Colors.grey),
                      ),
                      focusColor: primaryColor),
                ),
                const SizedBox(
                  height: 26,
                ),
                Text(
                  'Model',
                  style: GoogleFonts.montserrat(
                      textStyle: TextStyle(fontSize: 17.sp, color: grey)),
                  textScaleFactor: 1.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Something here',
                      hintStyle: GoogleFonts.montserrat(
                        textStyle: const TextStyle(color: Colors.grey),
                      ),
                      focusColor: primaryColor),
                ),
                const SizedBox(
                  height: 26,
                ),
                Text(
                  'Color',
                  style: GoogleFonts.montserrat(
                      textStyle: TextStyle(fontSize: 17.sp, color: grey)),
                  textScaleFactor: 1.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Something here',
                      hintStyle: GoogleFonts.montserrat(
                        textStyle: const TextStyle(color: Colors.grey),
                      ),
                      focusColor: primaryColor),
                ),
                const SizedBox(
                  height: 26,
                ),
                Text(
                  'License Number',
                  style: GoogleFonts.montserrat(
                      textStyle: TextStyle(fontSize: 17.sp, color: grey)),
                  textScaleFactor: 1.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Something here',
                      hintStyle: GoogleFonts.montserrat(
                        textStyle: const TextStyle(color: Colors.grey),
                      ),
                      focusColor: primaryColor),
                ),
                const SizedBox(
                  height: 26,
                ),
                Text(
                  'Title',
                  style: GoogleFonts.montserrat(
                      textStyle: TextStyle(fontSize: 17.sp, color: grey)),
                  textScaleFactor: 1.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Something here',
                      hintStyle: GoogleFonts.montserrat(
                        textStyle: const TextStyle(color: Colors.grey),
                      ),
                      focusColor: primaryColor),
                ),
                const SizedBox(
                  height: 26,
                ),
                Text(
                  'Notes',
                  style: GoogleFonts.montserrat(
                      textStyle: TextStyle(fontSize: 17.sp, color: grey)),
                  textScaleFactor: 1.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: grey),
                    ),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      icon: const Icon(Icons.keyboard_arrow_down),
                      items: [
                        'Andhra Pradesh',
                        'Arunachal Pradesh',
                        'Assam',
                        'Bihar'
                      ].map((String val) {
                        return DropdownMenuItem<String>(
                          value: val,
                          child: Row(
                            children: <Widget>[
                              Text(val),
                            ],
                          ),
                        );
                      }).toList(),
                      hint: Text(
                        'Select State',
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(color: Colors.grey),
                        ),
                      ),
                      onChanged: (v) {
                        setState(() {
                          value = v;
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 26,
                ),
                Text(
                  'Towed',
                  style: GoogleFonts.montserrat(
                      textStyle: TextStyle(fontSize: 17.sp, color: grey)),
                  textScaleFactor: 1.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: grey),
                    ),
                  ),
                  child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: ['Yes', 'No'].map((String val) {
                            return DropdownMenuItem<String>(
                              value: val,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(val),
                                  const Divider(
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                          hint: Text(
                            'Select Yes or No',
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(color: Colors.grey),
                            ),
                          ),
                          onChanged: (v) {})),
                ),
                const SizedBox(
                  height: 26,
                ),
                Text(
                  'Notes',
                  style: GoogleFonts.montserrat(
                      textStyle: TextStyle(fontSize: 17.sp, color: grey)),
                  textScaleFactor: 1.0,
                ),
                const SizedBox(
                  height: 18,
                ),
                TextFormField(
                  maxLines: 8,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: grey)),
                      hintText: 'Something here',
                      hintStyle: GoogleFonts.montserrat(
                        textStyle: const TextStyle(color: Colors.grey),
                      ),
                      focusColor: primaryColor),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Upload Record Sample',
                  style: GoogleFonts.montserrat(
                      textStyle:
                          TextStyle(fontSize: 17.sp, color: Colors.grey)),
                  textScaleFactor: 1.0,
                ),
                const SizedBox(
                  height: 18,
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
          ),
          const SizedBox(
            height: 26,
          ),
          const Divider(
            color: Colors.grey,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
            child: Center(
              child: CupertinoButton(
                  disabledColor: seconderyColor,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 150, vertical: 15),
                  color: primaryColor,
                  child: const Text(
                    'Send',
                    style: TextStyle(fontSize: 20),
                    textScaleFactor: 1.0,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Home();
                    }));
                  }),
            ),
          ),
        ],
      )),
    );
  }
}
