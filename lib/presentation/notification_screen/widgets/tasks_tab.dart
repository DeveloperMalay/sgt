import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sgt/presentation/notification_screen/widgets/notification_model.dart';

import '../../../utils/const.dart';

class TasksTab extends StatefulWidget {
  const TasksTab({super.key});

  @override
  State<TasksTab> createState() => _TasksTabState();
}

class _TasksTabState extends State<TasksTab> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: notificationdummydata.length,
        itemBuilder: (context, index) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Text(notificationdummydata[index].descText),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                      const FaIcon(
                        FontAwesomeIcons.solidClock,
                        size: 17,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(notificationdummydata[index].time),
                    ],
                  ),
                ),
                trailing: CircleAvatar(
                  radius: 30,
                  backgroundColor: grey,
                  backgroundImage: NetworkImage(
                    notificationdummydata[index].profileUrl,
                  ),
                ),
              ),
              const Divider(
                color: Colors.grey,
              )
            ],
          );
        });
  }
}
