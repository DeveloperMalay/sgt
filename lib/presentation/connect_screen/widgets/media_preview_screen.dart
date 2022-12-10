import 'package:flutter/material.dart';
import 'package:sgt/presentation/connect_screen/widgets/chat_model.dart';

import '../../../utils/const.dart';

class MediaPreviewScreen extends StatefulWidget {
  const MediaPreviewScreen({super.key, required this.index});
  final int index;
  @override
  State<MediaPreviewScreen> createState() => _MediaPreviewScreenState();
}

class _MediaPreviewScreenState extends State<MediaPreviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: white,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Icon(
              Icons.arrow_back_ios,
              color: black,
              size: 30,
            ),
          ),
        ),
        leadingWidth: 25,
        title: ListTile(
          leading: Stack(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: grey,
                backgroundImage: NetworkImage(
                  dummyData[widget.index].profileUrl,
                ),
              ),
              dummyData[widget.index].isOnline
                  ? Positioned(
                      top: 26,
                      left: 26,
                      child: Container(
                        height: 13,
                        width: 13,
                        decoration: BoxDecoration(
                          color: greenColor,
                          border: Border.all(color: white, width: 2),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    )
                  : Positioned(
                      top: 40,
                      left: 40,
                      child: Container(),
                    )
            ],
          ),
          title: Text(dummyData[widget.index].name),
          subtitle: dummyData[widget.index].isOnline
              ? const Text("Active Now")
              : const Text("Not Active"),
        ),
      ),
    );
  }
}
