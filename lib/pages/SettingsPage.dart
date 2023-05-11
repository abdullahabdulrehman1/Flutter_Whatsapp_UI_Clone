import 'package:flutter/material.dart';
import 'package:whatsappuiclone/util/dimensions.dart';

// import 'package:whatsappuiclone/util/dimensions.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: ,
        leadingWidth: Dimension.width30 * 2,
        title: Padding(
          padding: const EdgeInsets.only(left: 0),
          child: Text(
            "Settings",
            style: TextStyle(
                fontSize: Dimension.font20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: Dimension.height10),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                    vertical: Dimension.height10 + 2,
                    horizontal: Dimension.height10 + 2),
                child: Row(children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(Dimension.radius20 * 2),
                    child: Image.asset(
                      "assets/Images/c7.png",
                      height: Dimension.height30 * 2 - 5,
                      width: Dimension.height30 * 2 - 5,
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
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: Dimension.height10 - 2,
                        ),
                        Text(
                          "Hey there I am using Whatsapp!",
                          style: TextStyle(
                              fontSize: Dimension.font16 - 1,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54),
                        ),
                      ],
                    ),
                  )
                ]),
              ),
              Divider(
                thickness: 1,
              ),
              Padding(
                padding: EdgeInsets.only(left: Dimension.height10),
                child: ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(top: Dimension.height10 - 4),
                    child: Icon(Icons.key),
                  ),
                  title: Text(
                    "Account",
                    style: TextStyle(
                        fontSize: Dimension.font16 + 1,
                        // fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  subtitle: Text(
                    "Privacy, Security, and Change Number",
                    style: TextStyle(
                        fontSize: Dimension.font16 - 1,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: Dimension.height10),
                child: ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(top: Dimension.height10 - 4),
                    child: Icon(Icons.chat),
                  ),
                  title: Text(
                    "Chats",
                    style: TextStyle(
                        fontSize: Dimension.font16 + 1,
                        // fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  subtitle: Text(
                    "Messeges, group and call tones",
                    style: TextStyle(
                        fontSize: Dimension.font16 - 1,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: Dimension.height10),
                child: ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(top: Dimension.height10 - 4),
                    child: Icon(Icons.notifications),
                  ),
                  title: Text(
                    "Notifications",
                    style: TextStyle(
                        fontSize: Dimension.font16 + 1,
                        // fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  subtitle: Text(
                    "Theme, wallpapers",
                    style: TextStyle(
                        fontSize: Dimension.font16 - 1,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: Dimension.height10),
                child: ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(top: Dimension.height10 - 4),
                    child: Icon(Icons.circle_outlined),
                  ),
                  title: Text(
                    "Storage and Data",
                    style: TextStyle(
                        fontSize: Dimension.font16 + 1,
                        // fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  subtitle: Text(
                    "Network and usage , auto-download",
                    style: TextStyle(
                        fontSize: Dimension.font16 - 1,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: Dimension.height10),
                child: ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(top: Dimension.height10 - 4),
                    child: Icon(Icons.help_outline_outlined),
                  ),
                  title: Text(
                    "Help",
                    style: TextStyle(
                        fontSize: Dimension.font16 + 1,
                        // fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  subtitle: Text(
                    "Help centre, contact Us, privacy policy",
                    style: TextStyle(
                        fontSize: Dimension.font16 - 1,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: Dimension.height10),
                child: ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(top: Dimension.height10 - 4),
                    child: Icon(Icons.people_alt),
                  ),
                  title: Text(
                    "Invite A Friend",
                    style: TextStyle(
                        fontSize: Dimension.font16 + 1,
                        // fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
                
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: Dimension.height30*2),
              child: Column(
 children: [
  Text(
                    "from",
                    style: TextStyle(
                        fontSize: Dimension.font16 - 1,
                        // fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  Text(
                    "Facebook",
                    style: TextStyle(
                        fontSize: Dimension.font16 + 1,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
 ],
              )
              )
            ],
          ),
        ),
      ),
      
    );
  }
}
