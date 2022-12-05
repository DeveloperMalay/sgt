import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import '../../utils/const.dart';

class EditAccountScreen extends StatefulWidget {
  const EditAccountScreen({super.key});

  @override
  State<EditAccountScreen> createState() => _EditAccountScreenState();
}

class _EditAccountScreenState extends State<EditAccountScreen> {
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  TextEditingController _otpController = TextEditingController();
  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  final defaultPinTheme = PinTheme(
    width: 36,
    height: 36,
    textStyle: const TextStyle(
        fontSize: 20, color: Colors.grey, fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: const Color.fromARGB(255, 135, 136, 138)),
      borderRadius: BorderRadius.circular(5),
    ),
  );
  final submittedPinTheme = PinTheme(
    width: 36,
    height: 36,
    textStyle: TextStyle(
        fontSize: 20, color: primaryColor, fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: primaryColor),
      borderRadius: BorderRadius.circular(5),
    ),
  );
  PinTheme? focusedPinTheme;

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
            'Edit Account Details',
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
        backgroundColor: white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 70,
                          backgroundColor: grey,
                          backgroundImage: const NetworkImage(
                            'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                          ),
                        ),
                        Positioned(
                          top: 100,
                          left: 100,
                          child: InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                  context: context,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  builder: (context) {
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 25),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          const Text(
                                            'Select Media From?',
                                            textScaleFactor: 1.0,
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          const Text(
                                            'Use camera or select file from device gallery',
                                            textScaleFactor: 1.0,
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Color.fromARGB(
                                                    255, 109, 109, 109)),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Column(
                                                children: [
                                                  Container(
                                                    height: 60,
                                                    width: 60,
                                                    decoration: BoxDecoration(
                                                      color: grey,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    child: const Icon(
                                                      Icons.camera_alt,
                                                      size: 30,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 8,
                                                  ),
                                                  const Text(
                                                    'Camera',
                                                    textScaleFactor: 1.0,
                                                  )
                                                ],
                                              ),
                                              Column(
                                                children: [
                                                  Container(
                                                    height: 60,
                                                    width: 60,
                                                    decoration: BoxDecoration(
                                                      color: white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.grey
                                                              .withOpacity(0.5),
                                                          spreadRadius: 5,
                                                          blurRadius: 7,
                                                          offset: const Offset(
                                                              0,
                                                              3), // changes position of shadow
                                                        ),
                                                      ],
                                                    ),
                                                    child: const Icon(
                                                      Icons.photo_outlined,
                                                      size: 30,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 8,
                                                  ),
                                                  const Text(
                                                    'Gallery',
                                                    textScaleFactor: 1.0,
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    );
                                  });
                            },
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.circular(50)),
                              child: const Icon(
                                Icons.add,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Personal',
                    style: TextStyle(color: black, fontSize: 17),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  const Text(
                    'Name',
                    style: TextStyle(color: Colors.grey),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: grey, width: 2),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: primaryColor, width: 2),
                        ),
                        hintText: 'Jenny Doe',
                        focusColor: primaryColor),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  const Text(
                    'Email',
                    style: TextStyle(color: Colors.grey),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: grey, width: 2),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: primaryColor, width: 2),
                        ),
                        hintText: 'johndoe@mail.com',
                        focusColor: primaryColor),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  const Text(
                    'Phone',
                    style: TextStyle(color: Colors.grey),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: grey, width: 2),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: primaryColor, width: 2),
                        ),
                        hintText: '(808)628 8343',
                        focusColor: primaryColor),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Address',
                    style: TextStyle(color: black, fontSize: 17),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  const Text(
                    'Street',
                    style: TextStyle(color: Colors.grey),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: grey, width: 2),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: primaryColor, width: 2),
                        ),
                        hintText: 'Sample Street',
                        focusColor: primaryColor),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  const Text(
                    'City',
                    style: TextStyle(color: Colors.grey),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: grey, width: 2),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: primaryColor, width: 2),
                        ),
                        hintText: 'Los Angeles',
                        focusColor: primaryColor),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  const Text(
                    'State',
                    style: TextStyle(color: Colors.grey),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: grey, width: 2),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: primaryColor, width: 2),
                        ),
                        hintText: 'CA',
                        focusColor: primaryColor),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  const Text(
                    'Zipcode',
                    style: TextStyle(color: Colors.grey),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: grey, width: 2),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: primaryColor, width: 2),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: grey),
                        ),
                        hintText: '90045',
                        focusColor: primaryColor),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  const Text(
                    'Upload Guard Card',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 20.h,
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
                  SizedBox(
                    height: 20.h,
                  ),
                  const Text(
                    'Phone',
                    style: TextStyle(color: Colors.grey),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: grey, width: 2),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: primaryColor, width: 2),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: grey),
                      ),
                      hintText: '(808) 628 8343',
                      focusColor: primaryColor,
                      // suffixIcon: Icon(
                      //   Icons.check_circle_outline,
                      //   color: primaryColor,
                      // ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Center(
                    child: Text(
                      'Verifying your number',
                      style: TextStyle(color: black, fontSize: 16.sp),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Center(
                    child: Text(
                      'Enter code',
                      style: TextStyle(color: Colors.grey, fontSize: 15.sp),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Center(
                    child: Pinput(
                      controller: _otpController,
                      length: 6,
                      defaultPinTheme: defaultPinTheme,
                      focusedPinTheme: focusedPinTheme,
                      submittedPinTheme: submittedPinTheme,
                      validator: (s) {},
                      pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                      showCursor: true,
                      onCompleted: (pin) => print(pin),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Didn't Receive OTP yet?,",
                          style: TextStyle(color: black, fontSize: 12.sp),
                        ),
                        Text(
                          "00:05",
                          style:
                              TextStyle(color: primaryColor, fontSize: 12.sp),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Center(
                    child: Text(
                      "Resend code",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 15.sp,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Center(
                    child: CupertinoButton(
                        disabledColor: seconderyColor,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 130, vertical: 15),
                        color: primaryColor,
                        child: Text(
                          'Verify',
                          style: TextStyle(fontSize: 20.sp),
                        ),
                        onPressed: () {}),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
