import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:whatsappuiclone/util/dimensions.dart';

class ChatBottomBar extends StatefulWidget {
  const ChatBottomBar({super.key});

  @override
  State<ChatBottomBar> createState() => _ChatBottomBarState();
}

class _ChatBottomBarState extends State<ChatBottomBar> {
  _ChatBottomBarState createState() => _ChatBottomBarState();
  @override
  Widget build(BuildContext context) {
     bool hasInput = false;
    return Container(
      height: Dimension.height30 * 2,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(Dimension.height10 / 2),
            padding: EdgeInsets.symmetric(
                vertical: Dimension.height10 / 2,
                horizontal: Dimension.height15),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(Dimension.radius30)),
            child: Row(children: [
              Icon(
                Icons.emoji_emotions_outlined,
                color: Colors.black38,
                size: Dimension.radius30,
              ),
              SizedBox(
                width: Dimension.height10,
              ),
              Container(
                width: Dimension.height20 * 8.6,
                child: TextFormField(
                  
                   onChanged: (value) {
                setState(() {
                  hasInput = value.isNotEmpty;
                  
                });},
                
                  style: TextStyle(fontSize: Dimension.font20 - 1),
                  decoration: InputDecoration(
                      hintText: "Messege", border: InputBorder.none),
                ),
              ),
              Icon(
              Icons.attachment_outlined,
                color: Colors.black38,size: Dimension.height30,
              ),
              SizedBox(
                width: Dimension.height15,
              ),
              Icon(
                Icons.camera_alt_outlined,
                color: Colors.black38,
                size: Dimension.height30,
              ),
            ]),
          ),
          Container(
            padding: EdgeInsets.all(Dimension.height10),
            decoration: BoxDecoration(
              color: Color(0xff075E55),
              borderRadius: BorderRadius.circular(Dimension.radius30),
            ),
            child: Icon(
               hasInput ?Icons.send_outlined :Icons.mic,
              size: Dimension.height30,
              color: hasInput?Colors.green: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
