import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class MyFeelingsPage extends StatefulWidget {
  const MyFeelingsPage({Key? key}) : super(key: key);

  @override
  _MyFeelingsPageState createState() => _MyFeelingsPageState();
}

class _MyFeelingsPageState extends State<MyFeelingsPage> {
  bool status = false;
  bool changing = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Мои отзывы"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Product", style: TextStyle(fontWeight: FontWeight.w800)),
              Text("Rating", style: TextStyle(fontWeight: FontWeight.w800)),
            ],
          ),
          SizedBox(height: 10),
          Divider(),
          SizedBox(height: 10),

          ExpansionTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.blue,
                    ),
                    child: changing? Icon(Icons.remove, color: Colors.white): Icon(Icons.add, color: Colors.white)
                ),
                Text("Men's One and Only Textured Short Sleeve Button Up", style: TextStyle(color: Colors.black87.withOpacity(.8))),
                SizedBox(height: 10),
                Divider(),


              ],
            ),
            tilePadding: EdgeInsets.zero,
            trailing: Text("3", style:  TextStyle(color: Colors.grey),),
            onExpansionChanged: (chan){
              setState(() {
                changing = chan;
              });
            },
            children: [
              SizedBox(height: 10),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: Text("#"),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text("1", style: TextStyle(color: Colors.grey)),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Divider(),
              SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(flex: 1, child: Text("Product Owner")),
                  Expanded(
                    flex: 2,
                    child: Text("admin", style: TextStyle(color: Colors.grey)),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Divider(),
              SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(flex: 1, child: Text("Customer")),
                  Expanded(
                    flex: 2,
                    child: Text("Mr.Customer (customer@example.com)",
                        style: TextStyle(color: Colors.grey)),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Divider(),
              SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(flex: 1, child: Text("Comment")),
                  Expanded(
                    flex: 2,
                    child: Text(
                        "Learn Ipsum is simply dummy text of the printing and typesetting industry. Lorem ip sum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a gallaery of type and scrambed it to make a type specimen book",
                        style: TextStyle(color: Colors.grey)),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Divider(),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Text("Published"),
                  ),
                  Expanded(
                      flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          FlutterSwitch(
                              padding: 1,
                              toggleSize: 15,
                              width: 45,
                              height: 20,
                              activeColor: Colors.grey.withOpacity(.3),
                              inactiveColor: Colors.grey.withOpacity(.3),
                              activeToggleColor: Colors.green,
                              value: status,
                              onToggle: (val) {
                                setState(() {
                                  status = val;
                                });
                              }),
                        ],
                      )),
                ],
              ),
              SizedBox(height: 10),

            ],
          ),
          ExpansionTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.blue,
                    ),
                    child: changing? Icon(Icons.remove, color: Colors.white): Icon(Icons.add, color: Colors.white)
                ),
                Text("Men's One and Only Textured Short Sleeve Button Up", style: TextStyle(color: Colors.black87.withOpacity(.8))),
                SizedBox(height: 10),
                Divider(),
              ],
            ),
            tilePadding: EdgeInsets.zero,
            trailing: Text("3", style:  TextStyle(color: Colors.grey),),
            onExpansionChanged: (chan){
              setState(() {
                changing = chan;
              });
            },
            children: [
              SizedBox(height: 10),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: Text("#"),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text("1", style: TextStyle(color: Colors.grey)),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Divider(),
              SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(flex: 1, child: Text("Product Owner")),
                  Expanded(
                    flex: 2,
                    child: Text("admin", style: TextStyle(color: Colors.grey)),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Divider(),
              SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(flex: 1, child: Text("Customer")),
                  Expanded(
                    flex: 2,
                    child: Text("Mr.Customer (customer@example.com)",
                        style: TextStyle(color: Colors.grey)),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Divider(),
              SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(flex: 1, child: Text("Comment")),
                  Expanded(
                    flex: 2,
                    child: Text(
                        "Learn Ipsum is simply dummy text of the printing and typesetting industry. Lorem ip sum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a gallaery of type and scrambed it to make a type specimen book",
                        style: TextStyle(color: Colors.grey)),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Divider(),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Text("Published"),
                  ),
                  Expanded(
                      flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          FlutterSwitch(
                              padding: 1,
                              toggleSize: 15,
                              width: 45,
                              height: 20,
                              activeColor: Colors.grey.withOpacity(.3),
                              inactiveColor: Colors.grey.withOpacity(.3),
                              activeToggleColor: Colors.green,
                              value: status,
                              onToggle: (val) {
                                setState(() {
                                  status = val;
                                });
                              }),
                        ],
                      )),
                ],
              ),
              SizedBox(height: 10),

            ],
          ),
          ExpansionTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.blue,
                    ),
                    child: changing? Icon(Icons.remove, color: Colors.white): Icon(Icons.add, color: Colors.white)
                ),
                Text("Men's One and Only Textured Short Sleeve Button Up", style: TextStyle(color: Colors.black87.withOpacity(.8))),
                SizedBox(height: 10),
                Divider(),
              ],
            ),
            tilePadding: EdgeInsets.zero,
            trailing: Text("3", style:  TextStyle(color: Colors.grey),),
            onExpansionChanged: (chan){
              setState(() {
                changing = chan;
              });
            },
            children: [
              SizedBox(height: 10),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: Text("#"),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text("1", style: TextStyle(color: Colors.grey)),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Divider(),
              SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(flex: 1, child: Text("Product Owner")),
                  Expanded(
                    flex: 2,
                    child: Text("admin", style: TextStyle(color: Colors.grey)),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Divider(),
              SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(flex: 1, child: Text("Customer")),
                  Expanded(
                    flex: 2,
                    child: Text("Mr.Customer (customer@example.com)",
                        style: TextStyle(color: Colors.grey)),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Divider(),
              SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(flex: 1, child: Text("Comment")),
                  Expanded(
                    flex: 2,
                    child: Text(
                        "Learn Ipsum is simply dummy text of the printing and typesetting industry. Lorem ip sum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a gallaery of type and scrambed it to make a type specimen book",
                        style: TextStyle(color: Colors.grey)),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Divider(),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Text("Published"),
                  ),
                  Expanded(
                      flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          FlutterSwitch(
                              padding: 1,
                              toggleSize: 15,
                              width: 45,
                              height: 20,
                              activeColor: Colors.grey.withOpacity(.3),
                              inactiveColor: Colors.grey.withOpacity(.3),
                              activeToggleColor: Colors.green,
                              value: status,
                              onToggle: (val) {
                                setState(() {
                                  status = val;
                                });
                              }),
                        ],
                      )),
                ],
              ),
              SizedBox(height: 10),

            ],
          ),

        ],
      ),
    );
  }
}
