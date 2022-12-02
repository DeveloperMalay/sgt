import 'package:flutter/material.dart';
import 'package:sgt/presentation/connect_screen/widgets/custom_shape.dart';
import 'package:sgt/utils/const.dart';

class SentMessageScreen extends StatelessWidget {
  final String message;
  const SentMessageScreen({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final messageTextGroup = Flexible(
        child: InkWell(
      onLongPress: () {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Container(
                  height: 140,
                  width: 333,
                  child: Column(children: [
                    Text('Delete media?'),
                    Text(
                      'Are you sure you want to delete this media?',
                      textAlign: TextAlign.center,
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(),
                        )
                      ],
                    )
                  ]),
                ),
              );
            });
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(18),
                  bottomLeft: Radius.circular(18),
                  bottomRight: Radius.circular(18),
                ),
              ),
              child: Text(
                message,
                style: const TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
          ),
          CustomPaint(painter: CustomShape(Colors.cyan[900]!)),
        ],
      ),
    ));

    return Padding(
      padding: EdgeInsets.only(right: 18.0, left: 50, top: 15, bottom: 5),
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
