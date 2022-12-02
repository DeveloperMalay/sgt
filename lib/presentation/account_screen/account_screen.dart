import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/const.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              Center(
                child: CircleAvatar(
                  radius: 70,
                  backgroundColor: grey,
                  backgroundImage: const NetworkImage(
                    'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                  ),
                ),
              ),
              Text(
                'Personal',
                style: TextStyle(color: black, fontSize: 17),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Name',
                style: TextStyle(color: Colors.grey),
              ),
              TextFormField(
                readOnly: true,
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: grey),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: grey),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: grey),
                    ),
                    hintText: 'Jenny Doe',
                    focusColor: primaryColor),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Email',
                style: TextStyle(color: Colors.grey),
              ),
              TextFormField(
                readOnly: true,
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: grey),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: grey),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: grey),
                    ),
                    hintText: 'johndoe@mail.com',
                    focusColor: primaryColor),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Phone',
                style: TextStyle(color: Colors.grey),
              ),
              TextFormField(
                readOnly: true,
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: grey),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: grey),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: grey),
                    ),
                    hintText: '(808)628 8343',
                    focusColor: primaryColor),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Address',
                style: TextStyle(color: black, fontSize: 17),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Street',
                style: TextStyle(color: Colors.grey),
              ),
              TextFormField(
                readOnly: true,
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: grey),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: grey),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: grey),
                    ),
                    hintText: 'Sample Street',
                    focusColor: primaryColor),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'City',
                style: TextStyle(color: Colors.grey),
              ),
              TextFormField(
                readOnly: true,
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: grey),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: grey),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: grey),
                    ),
                    hintText: 'Los Angeles',
                    focusColor: primaryColor),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'State',
                style: TextStyle(color: Colors.grey),
              ),
              TextFormField(
                readOnly: true,
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: grey),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: grey),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: grey),
                    ),
                    hintText: 'CA',
                    focusColor: primaryColor),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Zipcode',
                style: TextStyle(color: Colors.grey),
              ),
              TextFormField(
                readOnly: true,
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: grey),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: grey),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: grey),
                    ),
                    hintText: '90045',
                    focusColor: primaryColor),
              ),
              const SizedBox(
                height: 40,
              ),
              Center(
                child: CupertinoButton(
                    disabledColor: seconderyColor,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 100, vertical: 15),
                    color: primaryColor,
                    child: const Text(
                      'Update Profile',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {}),
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
