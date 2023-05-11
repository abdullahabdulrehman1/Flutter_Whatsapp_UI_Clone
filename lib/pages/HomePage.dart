import 'package:flutter/gestures.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:whatsappuiclone/util/dimensions.dart';
import 'package:whatsappuiclone/widgets/call_widget.dart';
import '../widgets/chatwidget.dart';
import '../widgets/status_widgets.dart';

class HomePage extends StatelessWidget {
  // TabController _tabController;'

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        initialIndex: 1,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: PreferredSize(
              child: AppBar(
                elevation: 0,
                title: Padding(
                  padding: EdgeInsets.only(top: Dimension.height10),
                  child: Text("Whatsapp",
                      style: TextStyle(fontSize: Dimension.font20)),
                ),
                actions: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: Dimension.height10, right: Dimension.width15-5),
                    child: Icon(
                      Icons.search,
                      size: Dimension.radius28,
                    ),
                  ),
                  PopupMenuButton(
                    elevation: 20,
                    padding: EdgeInsets.symmetric(vertical: Dimension.height20),
                    iconSize: Dimension.radius28,
                    onSelected: (selected) {
                      if (selected == 5) {
                        Navigator.pushNamed(context, "SettingsPage");
                      }
                    },
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        value: 1,
                        child: Text(
                          "New Group",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: Dimension.font16),
                        ),
                      ),
                      PopupMenuItem(
                        value: 2,
                        child: Text(
                          "Join Now",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: Dimension.font16),
                        ),
                      ),
                      PopupMenuItem(
                        value: 3,
                        child: Text(
                          "Check Online Status",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: Dimension.font16),
                        ),
                      ),
                      PopupMenuItem(
                        value: 4,
                        child: Text(
                          "Linked Devices",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: Dimension.font16),
                        ),
                      ),
                      PopupMenuItem(
                        value: 4,
                        child: Text(
                          "Starred Messeges",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: Dimension.font16),
                        ),
                      ),
                      PopupMenuItem(
                        value: 5,
                        child: Text(
                          "Settings",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: Dimension.font16),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              preferredSize: Size.fromHeight(Dimension.height30 * 2.2)),
          body: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Container(
                color: Color(0xff075E55),
                child: TabBar(
                  isScrollable: false,
// controller: TabController(length: 2, ),
                  indicatorColor: Colors.white,
                  indicatorWeight: 3,
                  automaticIndicatorColorAdjustment: true,
                  labelPadding: EdgeInsets.symmetric(horizontal: 10),
                  // labelColor: Colors.black,
                  labelStyle: TextStyle(
                      fontSize: Dimension.font16,
                      // fontWeight: FontWeight.bold,
                      color: Colors.black),
                  tabs: [
                    // axisDirectionIsReversed(AxisDriection AxisDirection.left),

                    Container(
                      // width: Dimension.width30,
                      child: Tab(
                          icon: Icon(
                        Icons.camera_alt,
                        size: Dimension.screenWidth <= 320
                            ? Dimension.iconsize16 * 1
                            : Dimension.iconsize16 * 1.2,
                      )),
                    ),
                    Expanded(
                      child: Container(
                        // margin: EdgeInsets.only(right: 4),
                        alignment: Alignment.center,
                        width: Dimension.screenWidth <= 320
                            ? Dimension.width30 * 100
                            : Dimension.width30 * 2.4,
                        child: Expanded(
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Flexible(
                                child: Text(
                                  "Chats ",
                                  style: TextStyle(
                                    // color: Colors.white,
                                    fontSize: Dimension.screenWidth <= 320
                                        ? Dimension.font14 - 2
                                        : Dimension.font16 - 2,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: Dimension.screenWidth <= 320
                                    ? Dimension.iconsize16 - 4
                                    : Dimension.iconsize16 + 4,
                                height: Dimension.screenWidth <= 320
                                    ? Dimension.iconsize16 - 3
                                    : Dimension.iconsize16 + 4,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                        Dimension.screenWidth <= 320
                                            ? Dimension.radius20 / 2
                                            : Dimension.radius20 / 2)),
                                child: Expanded(
                                  child: Text(
                                    "29+",
                                    style: TextStyle(
                                      fontSize: Dimension.screenWidth <= 320
                                          ? Dimension.font14 - 6
                                          : Dimension.font14 - 4,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // width: Dimension.width20 * 2.4,
                      child: Text(
                        "Status",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: Dimension.screenWidth <= 320
                              ? Dimension.font14 - 2
                              : Dimension.font16 - 2,
                        ),
                      ),
                    ),
                    Container(
                      // width: Dimension.width20 * 2.4,
                      child: Text(
                        "Calls",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: Dimension.screenWidth <= 320
                              ? Dimension.font14 - 2
                              : Dimension.font16 - 2,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                  flex: 1,
                  child: TabBarView(children: [
                    Container(
                      color: Colors.black,
                    ),
                    ChatsWidgets(),
                    statuswidget(),
                    Callwidget(),
                  ]))
            ],
          ),
       
       floatingActionButton: FloatingActionButton(onPressed: (){},backgroundColor: Color(0xff075E55),child: Icon(Icons.message_outlined),),
        )
        
        
        );
  }
}
