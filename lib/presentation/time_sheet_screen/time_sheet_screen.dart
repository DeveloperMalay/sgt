import 'package:flutter/material.dart';
import 'package:sgt/presentation/map_screen/map_screen.dart';
import 'package:sgt/presentation/time_sheet_screen/widgets/check_points_widget.dart';

import '../../utils/const.dart';

class TimeSheetScreen extends StatelessWidget {
  const TimeSheetScreen({super.key});

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
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MapScreen()));
              },
              icon: Icon(
                Icons.map,
                color: black,
              ))
        ],
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Checkpoints',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                CheckPointWidget(
                  iscompleted: true,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 100.0),
                  child: Divider(
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                CheckPointWidget(
                  iscompleted: true,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 100.0),
                  child: Divider(
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                CheckPointWidget(
                  iscompleted: false,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 100.0),
                  child: Divider(
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                CheckPointWidget(
                  iscompleted: false,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 100.0),
                  child: Divider(
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                CheckPointWidget(
                  iscompleted: false,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 100.0),
                  child: Divider(
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                CheckPointWidget(
                  iscompleted: false,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 100.0),
                  child: Divider(
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                CheckPointWidget(
                  iscompleted: false,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 100.0),
                  child: Divider(
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                CheckPointWidget(
                  iscompleted: false,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 100.0),
                  child: Divider(
                    color: Colors.grey,
                  ),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
