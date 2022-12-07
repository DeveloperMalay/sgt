import 'dart:math' as math; // import this

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sgt/presentation/connect_screen/widgets/custom_shape.dart';

import '../../../utils/const.dart';
import '../cubit/islongpressed/islongpress_cubit.dart';

class ReceivedMessageScreen extends StatelessWidget {
  final String message;
  const ReceivedMessageScreen({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final messageTextGroup = Flexible(
        child: InkWell(
      onLongPress: () {
        //   BlocProvider.of<IslongpressCubit>(context).longpressed();

        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 0, vertical: 0),
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
                      style: TextStyle(fontSize: 15, color: Colors.grey),
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
                              border: Border.all(color: primaryColor),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Text(
                                'Cencel',
                                textScaleFactor: 1.0,
                                style: TextStyle(color: primaryColor),
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
                              border: Border.all(color: primaryColor),
                              borderRadius: BorderRadius.circular(5),
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Transform(
            alignment: Alignment.center,
            transform: Matrix4.rotationY(math.pi),
            child: CustomPaint(
              painter: CustomShape(Colors.grey[300]!),
            ),
          ),
          Flexible(
            child: Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: grey,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(18),
                  bottomLeft: Radius.circular(18),
                  bottomRight: Radius.circular(18),
                ),
              ),
              child: Text(
                message,
                style: TextStyle(color: Colors.black, fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    ));

    return Padding(
      padding: EdgeInsets.only(right: 50.0, left: 18, top: 10, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          SizedBox(height: 30),
          messageTextGroup,
        ],
      ),
    );
  }
}
