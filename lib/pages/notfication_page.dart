import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  bool _enable = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Color.fromRGBO(246, 246, 246, 1),
        centerTitle: true,
        title: Text("Уведомления", style: TextStyle(color: Colors.black87.withOpacity(.7)),),
        actions: [
          Switch(
            activeColor: Color.fromRGBO(24, 27, 98, 1),
            value: _enable,
            onChanged: (value) {
              setState(() {
                _enable = value;
              });
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index){
          return notificationListBuilder("dsdghhdgsdfkdsfsdkjfsdfjggsjdgfhjgfgsdfhdsgfhdffjdhfdfjgjhgdfjgjgsdjfgdhgfhdgfhdgfjshgdfjshgfjgdfjgfgsdgfjghgfjhgfhsadvsdv");
        },
      )
    );
  }
  Widget notificationListBuilder(String notifications){
    return Column(
      children: [
        Container(
          padding:EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(246, 246, 246, 1),
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.grey.withOpacity(0.3))),
                child: Container(
                    margin: EdgeInsets.all(5),
                    child: Icon(Icons.notifications_none_outlined, color: Color.fromRGBO(24, 27, 98, 1), size: 28,)),
              ),
              SizedBox(width: 10),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(notifications),
                  SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.access_time, color: Colors.grey.withOpacity(0.3)),
                      SizedBox(width: 4),
                      Text(DateTime.now().toString().substring(0, 10),style: TextStyle(color: Colors.grey.withOpacity(.3)),)
                    ],
                  )
                ],
              ))
            ],
          ),
        ),
        Divider(color: Colors.grey.withOpacity(0.3),thickness: 2, height: 0),
      ],
    );
  }
}
