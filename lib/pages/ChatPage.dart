import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:whatsappuiclone/util/dimensions.dart';
import 'package:whatsappuiclone/widgets/chatsample.dart';

import '../widgets/chat_bottom_bar.dart';

class Chatpage extends StatefulWidget {
  const Chatpage({super.key});

  @override
  State<Chatpage> createState() => _ChatpageState();
}

class _ChatpageState extends State<Chatpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(Dimension.height30 * 2),
        child: AppBar(
          // leadingWidth: Dimension.height20*2,
          elevation: 0,
          titleSpacing: 1, automaticallyImplyLeading: false,
          centerTitle: false,

          leading: null,
          title: Padding(
              padding: EdgeInsets.only(
                  top: Dimension.height10 - 5, left: Dimension.height15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: Dimension.height10),
                    child: InkWell(
                      onTap: () {
                        onTap:
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(Dimension.radius30),
                    child: Image.asset(
                      "assets/Images/c0.png",
                      height: Dimension.height45,
                      width: Dimension.height45,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: Dimension.height10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Abdullah",
                          style: TextStyle(
                            fontSize: Dimension.font20 - 2,
                          ),
                        ),
                        SizedBox(
                          height: Dimension.height10 - 7,
                        ),
                        Text(
                          "Online",
                          style: TextStyle(
                              fontSize: Dimension.font16 - 4,
                              // fontWeight: FontWeight.w500,
                              color: Colors.white.withOpacity(0.8)),
                        ),
                        // Spacer(),
                      ],
                    ),
                  ),
                  // Spacer(),
                ],
              )),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: Dimension.font14),
              child: Icon(
                Icons.videocam,
                size: Dimension.iconsize24 + 2,
              ),
            ),
            SizedBox(
              width: Dimension.height10,
            ),
            Padding(
              padding: EdgeInsets.only(right: Dimension.font14),
              child: Icon(Icons.phone, size: Dimension.iconsize24),
            ),
            Padding(
              padding: EdgeInsets.only(right: Dimension.font14),
              child: Icon(Icons.more_vert, size: Dimension.iconsize24),
            ),
          ],
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/Images/c12.png"), fit: BoxFit.cover)),
        child: SingleChildScrollView(
          padding: EdgeInsets.only(
              top: Dimension.height10,
              left: Dimension.height10 - 2,
              bottom: Dimension.height45 * 2 - Dimension.height10),
          child: Column(
            children: [
              Container(
                  width: 300,
                  // height: 200,
                  margin: EdgeInsets.only(bottom: Dimension.height10 - 2),
                  padding: EdgeInsets.all(Dimension.height10 - 2),
                  decoration: BoxDecoration(
                      color: Color(0xfffff3c2),
                      borderRadius:
                          BorderRadius.circular(Dimension.radius20 /2),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5), blurRadius: 8)
                      ]),
                  child: Text(
                    "Messeges and calls are end-to-end encrypted no one outside this conversation can read or listen. Tap to learn more ",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: Dimension.font14 ),
                  )),
                  SizedBox(height: Dimension.height10,),
                  ChatSample(),
                  SizedBox(height: Dimension.height10,),
                  ChatSample(),
                  SizedBox(height: Dimension.height10,),
                  ChatSample(),
                  SizedBox(height: Dimension.height10,),
                  ChatSample(),
                  SizedBox(height: Dimension.height10,),
                  ChatSample(),
                  SizedBox(height: Dimension.height10,),
                  ChatSample(),
                  SizedBox(height: Dimension.height10,),
            ],
          ),
        ),
      ),
      bottomSheet: ChatBottomBar(),
    );
  }
}
