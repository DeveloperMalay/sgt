import 'package:flutter/material.dart';
import 'package:sgt/utils/const.dart';

class BuildPages extends StatelessWidget {
  const BuildPages(
      {super.key,
      required this.imageUrl,
      required this.iconImage,
      required this.smallText,
      required this.bigText,
      required this.descriptionText});
  final String imageUrl;
  final String iconImage;
  final String smallText;
  final String bigText;
  final String descriptionText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Image.asset(
              imageUrl,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(child: Image.asset(iconImage)),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              smallText,
              style: TextStyle(fontSize: 20, color: primaryColor),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              bigText,
              style: const TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              descriptionText,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 22, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
