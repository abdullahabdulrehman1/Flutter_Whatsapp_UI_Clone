import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:whatsappuiclone/util/dimensions.dart';

class ChatsWidgets extends StatelessWidget {
  const ChatsWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: Dimension.width15, vertical: Dimension.width15 / 5),
        child: Column(
          children: [
          for(int i=0; i<12;i++)
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "chatpage");
            },
            child: Container(
              // color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: Dimension.width15 - 3),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius:
                        BorderRadius.circular(Dimension.radius20 * 10),
                    child: Image.asset(
                      "assets/Images/c$i.png",
                      height: 65,
                      width: 65,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: Dimension.width15 - 5),
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
                          height: Dimension.height10 - 6,
                        ),
                        Text(
                          "Hello how are you!",
                          style: TextStyle(
                              fontSize: Dimension.font16,
                              fontWeight: FontWeight.w700,
                              color: Colors.black54),
                        ),
                        
                      ],
                    ),
                  ),
                  Spacer(),
                  Column(
                          children: [
                            Text(
                              "12:45",
                              style: TextStyle( fontSize: Dimension.font16,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff0fce5e),),
                            ),
                            SizedBox(height: Dimension.height10-4,),
                            Container(
                              alignment: Alignment.center,
                              width: Dimension.height20+8,
                              height: Dimension.height20+8,
                              decoration: BoxDecoration(color: Color(0xff0fce5e),
                              borderRadius: BorderRadius.circular(Dimension.radius20)
                              ),
                              child: Text("5",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white,fontSize: Dimension.font16),)
                            )
                          ],
                        ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
