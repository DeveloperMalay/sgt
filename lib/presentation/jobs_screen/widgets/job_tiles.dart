import 'package:flutter/material.dart';
import 'package:sgt/presentation/property_details_screen/property_details_screen.dart';
import 'package:sgt/utils/const.dart';

class JobsTile extends StatelessWidget {
  const JobsTile({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const PropertyDetailsScreen()));
        },
        child: Row(
          //mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/186077/pexels-photo-186077.jpeg?cs=srgb&dl=pexels-binyamin-mellish-186077.jpg&fm=jpg',
                  ),
                ),
                isActive
                    ? Positioned(
                        top: 45,
                        left: 40,
                        child: Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                            color: greenColor,
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      )
                    : Container()
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Rivi Properties',
                  style: TextStyle(fontSize: 17),
                ),
                const Text(
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
        ),
      ),
    );
  }
}
