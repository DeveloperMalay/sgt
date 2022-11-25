import 'package:flutter/material.dart';

class JobsTile extends StatelessWidget {
  const JobsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(
            'https://images.pexels.com/photos/186077/pexels-photo-186077.jpeg?cs=srgb&dl=pexels-binyamin-mellish-186077.jpg&fm=jpg',
          ),
        ),
        Column(
          children: [
            Text(
              'Rivi Properties',
              style: TextStyle(fontSize: 17),
            ),
            Text(
              'Guard Post Duties',
              style: TextStyle(fontSize: 17),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(
                  Icons.location_on,
                  color: Colors.grey,
                  size: 17,
                ),
                Text(
                  'Guard Post Duties',
                  style: TextStyle(fontSize: 17, color: Colors.grey),
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}
