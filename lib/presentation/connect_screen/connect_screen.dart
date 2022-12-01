import 'package:flutter/material.dart';
import 'package:sgt/presentation/connect_screen/widgets/chat_model.dart';
import '../../utils/const.dart';

class ConnectScreen extends StatefulWidget {
  const ConnectScreen({super.key});

  @override
  State<ConnectScreen> createState() => _ConnectScreenState();
}

class _ConnectScreenState extends State<ConnectScreen> {
  bool srcClicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: white,
        // title: TextFormField(
        //     decoration: const InputDecoration(
        //         prefixIcon: Icon(Icons.arrow_back_ios),
        //         border: OutlineInputBorder(),
        //         hintText: 'Search')),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              onPressed: () {},
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 16.0, bottom: 10),
            child: Text(
              'Connect',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16.0, bottom: 10),
            child: Text(
              'Chats',
              style: TextStyle(color: Colors.grey, fontSize: 17),
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
                                dummyData[index].messagetype == 'text'
                                    ? Icon(
                                        Icons.done_all_outlined,
                                        size: 17,
                                        color: dummyData[index].ismessageSeen
                                            ? primaryColor
                                            : Colors.grey,
                                      )
                                    : dummyData[index].messagetype == 'photo'
                                        ? const Icon(
                                            Icons.photo,
                                            size: 17,
                                          )
                                        : dummyData[index].messagetype ==
                                                'video'
                                            ? const Icon(
                                                Icons.videocam,
                                                size: 17,
                                              )
                                            : dummyData[index].messagetype ==
                                                    'not_send'
                                                ? const Icon(
                                                    Icons.av_timer,
                                                    size: 17,
                                                  )
                                                : Container(),
                                SizedBox(
                                  width: 170,
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
    );
  }
}
