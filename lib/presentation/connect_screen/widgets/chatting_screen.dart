import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sgt/presentation/connect_screen/cubit/message_pressed/message_pressed_cubit.dart';
import 'package:sgt/presentation/connect_screen/widgets/chat_model.dart';
import 'package:sgt/presentation/connect_screen/widgets/send_message_widget.dart';
import '../../../utils/const.dart';
import '../cubit/islongpressed/islongpress_cubit.dart';
import 'received_message_widget.dart';
import 'package:image_picker/image_picker.dart';

class ChattingScreen extends StatefulWidget {
  const ChattingScreen({super.key, required this.index});
  final int index;
  @override
  State<ChattingScreen> createState() => _ChattingScreenState();
}

class _ChattingScreenState extends State<ChattingScreen> {
  final ImagePicker _picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: Scaffold(
        appBar: BlocProvider.of<MessagePressedCubit>(context, listen: true)
                .state
                .messagelongpressed
            ? AppBar(
                elevation: 0,
                leadingWidth: 0,
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
                        BlocProvider.of<IslongpressCubit>(context)
                            .longpressed('');
                      },
                      icon: FaIcon(
                        FontAwesomeIcons.upload,
                        color: black,
                        size: 25,
                      )),
                  IconButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 0, vertical: 0),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      'Delete media?',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      'Are you sure you want to delete this media?',
                                      textAlign: TextAlign.center,
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.grey),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Divider(
                                      color: Colors.grey,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 20),
                                      child: Row(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(5),
                                            decoration: BoxDecoration(
                                              color: white,
                                              border: Border.all(
                                                  color: primaryColor),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Cencel',
                                                textScaleFactor: 1.0,
                                                style: TextStyle(
                                                    color: primaryColor),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 70,
                                          ),
                                          Container(
                                            height: 40,
                                            width: 1,
                                            decoration: BoxDecoration(
                                              color: Colors.grey,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 65,
                                          ),
                                          Container(
                                            padding: EdgeInsets.all(5),
                                            decoration: BoxDecoration(
                                              color: primaryColor,
                                              border: Border.all(
                                                  color: primaryColor),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Delete',
                                                textScaleFactor: 1.0,
                                                style: TextStyle(color: white),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              );
                            });
                      },
                      icon: Icon(
                        Icons.delete_outline,
                        color: black,
                        size: 25,
                      ))
                ],
              )
            : AppBar(
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
        backgroundColor: white,
        body: ListView(
          children: [
            InkWell(
              onLongPress: () {
                BlocProvider.of<MessagePressedCubit>(
                  context,
                ).messagedPressed();
              },
              child: SentMessageScreen(
                  message:
                      "Hey John, I need you to head over to the leasing office to check up on the back door."),
            ),
            ReceivedMessageScreen(message: "Sure!"),
            ReceivedMessageScreen(message: "Should I look for something?"),
            SentMessageScreen(message: "No we are all good"),
            SentMessageScreen(
                message:
                    "A tenant brought up a concern about a open door and there might be someone there."),
            ReceivedMessageScreen(message: "Ok I will check "),
            SentMessageScreen(message: "Can we meet tomorrow?"),
            ReceivedMessageScreen(
                message: "Yes, of course we will meet tomorrow"),
          ],
        ),
        bottomNavigationBar: Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: Container(
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(width: 2.0, color: Colors.grey),
              ),
              color: Colors.white,
            ),
            height: 60,
            child: Row(mainAxisSize: MainAxisSize.min, children: [
              IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        builder: (context) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 25),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Text(
                                  'Select Media From?',
                                  style: TextStyle(fontSize: 16),
                                ),
                                const Text(
                                  'Use camera or select file from device gallery',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color:
                                          Color.fromARGB(255, 109, 109, 109)),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    InkWell(
                                      onTap: () async {
                                        // Capture a photo
                                        final XFile? photo =
                                            await _picker.pickImage(
                                                source: ImageSource.camera);

                                        // Capture a video
                                        final XFile? video =
                                            await _picker.pickVideo(
                                                source: ImageSource.camera);
                                      },
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 60,
                                            width: 60,
                                            decoration: BoxDecoration(
                                              color: grey,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: const Icon(
                                              Icons.camera_alt,
                                              size: 30,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          const Text('Camera')
                                        ],
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () async {
                                        // Pick an image
                                        final XFile? image =
                                            await _picker.pickImage(
                                                source: ImageSource.gallery);

                                        // Pick a video
                                        final XFile? video =
                                            await _picker.pickVideo(
                                                source: ImageSource.gallery);

                                        // Pick multiple images
                                        final List<XFile>? images =
                                            await _picker.pickMultiImage();
                                      },
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 60,
                                            width: 60,
                                            decoration: BoxDecoration(
                                              color: white,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  spreadRadius: 5,
                                                  blurRadius: 7,
                                                  offset: const Offset(0,
                                                      3), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: const Icon(
                                              Icons.photo_outlined,
                                              size: 30,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          const Text('Gallery')
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          );
                        });
                  },
                  icon: Icon(
                    Icons.add_circle_sharp,
                    color: primaryColor,
                    size: 30,
                  )),
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: grey,
                    isDense: true,
                    contentPadding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                    enabledBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide: BorderSide(color: grey),
                    ),
                    // focusedBorder: UnderlineInputBorder(
                    //   borderSide: BorderSide(color: grey),
                    // ),
                    border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide: BorderSide(color: grey),
                    ),

                    // border: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(7),
                    //   borderSide: BorderSide(
                    //     color: white,
                    //   ),
                    // ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                        borderSide: BorderSide(color: grey)),
                    hintText: 'Write a message',
                  ),
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.send_rounded,
                    color: primaryColor,
                    size: 35,
                  ))
            ]),
          ),
        ),
      ),
    );
  }
}
