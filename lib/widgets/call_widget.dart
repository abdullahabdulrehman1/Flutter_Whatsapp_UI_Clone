import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsappuiclone/util/dimensions.dart';

class Callwidget extends StatelessWidget {
  const Callwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: Dimension.height15, vertical: Dimension.height10 - 5),
        child: Column(
          children: [
            for(int i = 7 ; i < 11 ; i++)
            Container(
              margin: EdgeInsets.symmetric(vertical: Dimension.height10 + 2),
              child: Row(children: [
                ClipRRect(
                  child: Image.asset(
                    "assets/Images/c$i.png",
                    height: Dimension.height30 * 2,
                    width: Dimension.width30 * 2,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(Dimension.radius30 + 10),
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
                      SizedBox(
                        height: Dimension.height10 - 2,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.call_made,
                            color: Color(0xff075E55),
                          ),
                          SizedBox(
                            width: Dimension.width15 - 11,
                          ),
                          Text(
                            "($i) Today, 12:4$i AM",
                            style: TextStyle(
                                fontSize: Dimension.font16 - 2,
                                fontWeight: FontWeight.w500,
                                color: Colors.black54),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  margin: EdgeInsets.only(right: Dimension.height10),
                  child: Icon(
                    Icons.call_sharp,
                    color: Color(0xff075E55),
                  ),
                ),
                
              ]),
            ),
            for(int i = 2 ; i < 5 ; i++)
            Container(
              margin: EdgeInsets.symmetric(vertical: Dimension.height10 + 2),
              child: Row(children: [
                ClipRRect(
                  child: Image.asset(
                    "assets/Images/c$i.png",
                    height: Dimension.height30 * 2,
                    width: Dimension.width30 * 2,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(Dimension.radius30 + 10),
                ),
                Padding(
                  padding: EdgeInsets.only(left: Dimension.height20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Abdullah",
                        style: TextStyle(
                            fontSize: Dimension.font16 + 2,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: Dimension.height10 - 2,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.call_received,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: Dimension.width15 - 11,
                          ),
                          Text(
                            "($i) Today, 12:4$i AM",
                            style: TextStyle(
                                fontSize: Dimension.font16 - 2,
                                fontWeight: FontWeight.w500,
                                color: Colors.black54),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  margin: EdgeInsets.only(right: Dimension.height10),
                  child: Icon(
                    Icons.videocam,
                    color: Color(0xff075E55),
                    // size: Dimension.height20*1.4,
                  ),
                ),
                
              ]),
            )
          ],
        ),
      ),
    );
  }
}
