// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../util/dimensions.dart';

class statuswidget extends StatelessWidget {
  const statuswidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: Dimension.height15, vertical: Dimension.height10 - 5),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: Dimension.height10 + 2),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(0.5),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimension.radius30 + 10),
                        border: Border.all(
                            color: Colors.grey, width: Dimension.height10 - 7)),
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(Dimension.radius30 + 10),
                      child: Image.asset(
                        "assets/Images/c0.png",
                        height: 55,
                        width: 55,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: Dimension.height20),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Abdullah",
                          style: TextStyle(
                              fontSize: Dimension.font16 + 1,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: Dimension.height15 - 7,
                        ),
                        Text(
                          "Today 12:13 AM",
                          style: TextStyle(
                              fontSize: Dimension.font16 - 1,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(right: Dimension.width15),
                    child: Icon(
                      Icons.more_vert,
                      color: Color(0xff075E55),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Dimension.height10,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Recent Updates",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: Dimension.font16,
                    color: Colors.black.withOpacity(0.6)),
              ),
            ),
              for(int i =2; i<5;i++)
            Container(
              margin: EdgeInsets.symmetric(vertical: Dimension.height10 + 2),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(0.5),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimension.radius30 + 10),
                        border: Border.all(color: Colors.blue, width: 3)),
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(Dimension.radius30 + 10),
                      child: Image.asset(
                        "assets/Images/c$i.png",
                        height: 55,
                        width: 55,fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: Dimension.height20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Huzi",
                          style: TextStyle(
                              fontSize: Dimension.font16 + 2,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: Dimension.height15-7,),
                         Text(
                          "Today 0$i:0$i PM",
                          style: TextStyle(
                              fontSize: Dimension.font16 - 1,
                              fontWeight: FontWeight.w500,color: Colors.black54),
                        ),
                      ],
                    ),
                  )
                  
                ],
              ),
            ),
            SizedBox(
              height: Dimension.height10,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Viewed Updates",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: Dimension.font16,
                    color: Colors.black.withOpacity(0.6)),
              ),
            ),
             for(int i =6; i<9;i++)
            Container(
              margin: EdgeInsets.symmetric(vertical: Dimension.height10 + 2),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(0.5),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimension.radius30 + 10),
                        border: Border.all(color: Colors.grey, width: 3)),
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(Dimension.radius30 + 10),
                      child: Image.asset(
                        "assets/Images/c$i.png",
                        height: 55,
                        width: 55,fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: Dimension.height20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ahmad",
                          style: TextStyle(
                              fontSize: Dimension.font16 + 2,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: Dimension.height15-7,),
                         Text(
                          "Yesterday 0$i:0$i PM",
                          style: TextStyle(
                              fontSize: Dimension.font16 - 1,
                              fontWeight: FontWeight.w500,color: Colors.black54),
                        ),
                      ],
                    ),
                  )
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
