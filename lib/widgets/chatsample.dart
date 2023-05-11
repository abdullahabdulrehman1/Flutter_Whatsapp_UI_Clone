import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:custom_clippers/custom_clippers.dart';
import 'package:whatsappuiclone/util/dimensions.dart';
// import 'container_to_clip.dart';

class ChatSample extends StatelessWidget {
  const ChatSample({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          
            padding: EdgeInsets.only(
                left: Dimension.screenWidth-Dimension.height30*9)
       , child: ClipPath(
          
          clipper: UpperNipMessageClipperTwo(MessageType.send),
          child: Container(
            alignment: Alignment.centerRight,
            // margin: EdgeInsets.only(right: 10),
            padding: EdgeInsets.only(
                top: Dimension.height10,
                bottom: Dimension.height10,
                left: Dimension.height10,
                right: Dimension.height10*3),
                decoration: BoxDecoration(color: Color(0xffe4fdca)),
                child: Text(
                  "Hi, I am Abdullah who are you!",style: TextStyle(fontSize: Dimension.font16),
                ),
          ),
        ),
        ),
        SizedBox(height: Dimension.height10,),
        Padding(
            padding: EdgeInsets.only(
                right: Dimension.screenWidth-Dimension.height30*9)
       , child: ClipPath(
          
          clipper: UpperNipMessageClipperTwo(MessageType.receive),
          child: Container(
            alignment: Alignment.centerLeft,
            // margin: EdgeInsets.only(right: 10),
            padding: EdgeInsets.only(
                top: Dimension.height10,
                bottom: Dimension.height10,
                right: Dimension.height10,
                left: Dimension.height10*3),
                decoration: BoxDecoration(color: Colors.white),
                child: Text(
                  "I am fine and you hello hello hello hello this is the text for testing,I am fine and you hello hello hello hello this is the text for testingI am fine and you hello hello hello hello this is the text for testing",style: TextStyle(fontSize: Dimension.font16),
                ),
          ),
        ),
        ),
        
      ],
    );
  }
}
