import 'package:flutter/material.dart';

class CircularProfile extends StatelessWidget {
  const CircularProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: const [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
              'https://cdn2.iconfinder.com/data/icons/avatars-99/62/avatar-370-456322-512.png',
            ),
          ),
          SizedBox(
            width: 70,
            child: Text(
              'Gerard Fabiano',
              softWrap: true,
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
