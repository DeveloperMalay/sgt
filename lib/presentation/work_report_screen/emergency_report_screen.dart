import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/const.dart';
import '../home.dart';

class EmergencyReportScreen extends StatefulWidget {
  const EmergencyReportScreen({super.key});

  @override
  State<EmergencyReportScreen> createState() => _EmergencyReportScreenState();
}

class _EmergencyReportScreenState extends State<EmergencyReportScreen> {
  var value;
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Emergency\nReport',
                      style: TextStyle(
                          fontSize: 40.sp, fontWeight: FontWeight.bold),
                      textScaleFactor: 1.0,
                    ),
                    const SizedBox(
                      height: 26,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Date',
                                  style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                          fontSize: 17.sp, color: grey)),
                                  textScaleFactor: 1.0,
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                      hintText: '00/00/00',
                                      hintStyle: GoogleFonts.montserrat(
                                        textStyle:
                                            const TextStyle(color: Colors.grey),
                                      ),
                                      focusColor: primaryColor),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Time',
                                  style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                          fontSize: 17.sp, color: grey)),
                                  textScaleFactor: 1.0,
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                      hintText: '00:00',
                                      hintStyle: GoogleFonts.montserrat(
                                        textStyle:
                                            const TextStyle(color: Colors.grey),
                                      ),
                                      focusColor: primaryColor),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Add Location',
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
                      child: const Center(
                          child: Icon(
                        Icons.add,
                        color: Colors.grey,
                        size: 50,
                      )),
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    Text(
                      'Description of Incident',
                      style: GoogleFonts.montserrat(
                          textStyle:
                              TextStyle(fontSize: 17.sp, color: Colors.grey)),
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
                          hintStyle: TextStyle(color: grey),
                          focusColor: primaryColor),
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    Text(
                      'Action Taken',
                      style: GoogleFonts.montserrat(
                          textStyle:
                              TextStyle(fontSize: 17.sp, color: Colors.grey)),
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
                          hintStyle: TextStyle(color: grey),
                          focusColor: primaryColor),
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    Text(
                      'People Involved',
                      style: GoogleFonts.montserrat(
                          textStyle:
                              TextStyle(fontSize: 17.sp, color: Colors.grey)),
                      textScaleFactor: 1.0,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.grey)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        'Name',
                                        style: GoogleFonts.montserrat(
                                            textStyle: TextStyle(
                                                fontSize: 17.sp, color: grey)),
                                        textScaleFactor: 1.0,
                                      ),
                                      TextFormField(
                                        decoration: InputDecoration(
                                            hintText: 'John Doe',
                                            hintStyle: GoogleFonts.montserrat(
                                              textStyle: const TextStyle(
                                                  color: Colors.grey),
                                            ),
                                            focusColor: primaryColor),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        'Phone',
                                        style: GoogleFonts.montserrat(
                                            textStyle: TextStyle(
                                                fontSize: 17.sp, color: grey)),
                                        textScaleFactor: 1.0,
                                      ),
                                      TextFormField(
                                        decoration: InputDecoration(
                                            hintText: '8086288343',
                                            hintStyle: GoogleFonts.montserrat(
                                              textStyle: const TextStyle(
                                                  color: Colors.grey),
                                            ),
                                            focusColor: primaryColor),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add,
                                color: Colors.grey,
                                size: 45,
                              ))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    Text(
                      'Witnesses',
                      style: GoogleFonts.montserrat(
                          textStyle:
                              TextStyle(fontSize: 17.sp, color: Colors.grey)),
                      textScaleFactor: 1.0,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.grey)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        'Name',
                                        style: GoogleFonts.montserrat(
                                            textStyle: TextStyle(
                                                fontSize: 17.sp, color: grey)),
                                        textScaleFactor: 1.0,
                                      ),
                                      TextFormField(
                                        decoration: InputDecoration(
                                            hintText: 'John Doe',
                                            hintStyle: GoogleFonts.montserrat(
                                              textStyle: const TextStyle(
                                                  color: Colors.grey),
                                            ),
                                            focusColor: primaryColor),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        'Phone',
                                        style: GoogleFonts.montserrat(
                                            textStyle: TextStyle(
                                                fontSize: 17.sp, color: grey)),
                                        textScaleFactor: 1.0,
                                      ),
                                      TextFormField(
                                        decoration: InputDecoration(
                                            hintText: '8086288343',
                                            hintStyle: GoogleFonts.montserrat(
                                              textStyle: const TextStyle(
                                                  color: Colors.grey),
                                            ),
                                            focusColor: primaryColor),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add,
                                color: Colors.grey,
                                size: 45,
                              ))
                        ],
                      ),
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
                          hintText: 'Number here',
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
                      'State',
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                  textStyle:
                                      const TextStyle(color: Colors.grey),
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
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Divider(
                color: Colors.grey,
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Police Report #',
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(fontSize: 17.sp, color: grey)),
                      textScaleFactor: 1.0,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: '00000',
                          hintStyle: GoogleFonts.montserrat(
                            textStyle: const TextStyle(color: Colors.grey),
                          ),
                          focusColor: primaryColor),
                    ),
                    const SizedBox(
                      height: 26,
                    ),
                    Text(
                      'Officer Name',
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(fontSize: 17.sp, color: grey)),
                      textScaleFactor: 1.0,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: 'John Doe',
                          hintStyle: GoogleFonts.montserrat(
                            textStyle: const TextStyle(color: Colors.grey),
                          ),
                          focusColor: primaryColor),
                    ),
                    const SizedBox(
                      height: 26,
                    ),
                    Text(
                      'Officer #',
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(fontSize: 17.sp, color: grey)),
                      textScaleFactor: 1.0,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Officer #',
                          hintStyle: GoogleFonts.montserrat(
                            textStyle: const TextStyle(color: Colors.grey),
                          ),
                          focusColor: primaryColor),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Divider(
                color: Colors.grey,
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                height: 35,
              ),
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
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const Home();
                        }));
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
