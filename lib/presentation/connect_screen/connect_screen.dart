import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sgt/presentation/connect_screen/widgets/chat_model.dart';
import 'package:sgt/presentation/connect_screen/widgets/chatting_screen.dart';
import '../../utils/const.dart';

class ConnectScreen extends StatefulWidget {
  const ConnectScreen({super.key});

  @override
  State<ConnectScreen> createState() => _ConnectScreenState();
}

class _ConnectScreenState extends State<ConnectScreen> {
  bool isSearching = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 0,
        backgroundColor: white,
        title: isSearching
            ? Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: grey,
                      isDense: true,
                      contentPadding: const EdgeInsets.fromLTRB(30, 5, 30, 0),
                      prefixIcon: Icon(
                        Icons.arrow_back_ios,
                        color: black,
                        size: 25,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                        borderSide: const BorderSide(
                            color: Colors.transparent, width: 0.0),
                      ),
                      hintText: 'Search',
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isSearching = !isSearching;
                          });
                        },
                        icon: Icon(
                          Icons.search,
                          size: 25,
                          color: black,
                        ),
                      )),
                ),
              )
            : Container(),
        actions: [
          isSearching
              ? Container()
              : Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        isSearching = !isSearching;
                      });
                    },
                    icon: Icon(
                      Icons.search,
                      color: black,
                      size: 35,
                    ),
                  ),
                ),
        ],
      ),
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 16.0, bottom: 10),
              child: Text(
                'Connect',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, bottom: 10),
              child: Text(
                'Chats',
                style: TextStyle(color: black, fontSize: 20),
              ),
            ),
            Divider(
              thickness: 3,
              color: primaryColor,
            ),
            SingleChildScrollView(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 3.56 / 5,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  itemCount: dummyData.length,
                  itemBuilder: (context, index) => Column(
                    children: [
                      ListTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ChattingScreen(index: index)));
                        },
                        leading: Stack(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: grey,
                              backgroundImage: NetworkImage(
                                dummyData[index].profileUrl,
                              ),
                            ),
                            dummyData[index].isOnline
                                ? Positioned(
                                    top: 40,
                                    left: 40,
                                    child: Container(
                                      height: 15,
                                      width: 15,
                                      decoration: BoxDecoration(
                                        color: greenColor,
                                        border:
                                            Border.all(color: white, width: 2),
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
                        title: Text(dummyData[index].name),
                        subtitle: dummyData[index].isSendByMe
                            ? Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  dummyData[index].messagetype == 'not_send'
                                      ? const Icon(
                                          Icons.av_timer,
                                          size: 17,
                                        )
                                      : Icon(
                                          Icons.done_all_outlined,
                                          size: 17,
                                          color: dummyData[index].ismessageSeen
                                              ? primaryColor
                                              : Colors.grey,
                                        ),
                                  dummyData[index].messagetype == 'photo'
                                      ? const Icon(
                                          Icons.photo,
                                          size: 17,
                                        )
                                      : dummyData[index].messagetype == 'video'
                                          ? const Icon(
                                              Icons.videocam,
                                              size: 17,
                                            )
                                          : Container(),
                                  SizedBox(
                                    width: 150.w,
                                    child: Text(
                                      dummyData[index].messagetype == 'photo'
                                          ? 'Photo'
                                          : dummyData[index].messagetype ==
                                                  'video'
                                              ? "Video"
                                              : dummyData[index].message,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      softWrap: false,
                                    ),
                                  )
                                ],
                              )
                            : Text(
                                dummyData[index].message,
                                overflow: TextOverflow.ellipsis,
                              ),
                        trailing: SizedBox(
                          height: 60,
                          width: 70,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  dummyData[index].time,
                                  style: const TextStyle(color: Colors.grey),
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                dummyData[index].msgNo != 0.toString()
                                    ? Container(
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                            color: primaryColor,
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        child: Center(
                                          child: Text(
                                            dummyData[index].msgNo,
                                            style: TextStyle(color: white),
                                          ),
                                        ),
                                      )
                                    : Container()
                              ]),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 90.0),
                        child: Divider(
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
