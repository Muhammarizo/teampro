import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyOrdersPage extends StatefulWidget {
  static final String id = "my_orders";

  @override
  _MyOrdersPageState createState() => _MyOrdersPageState();
}

class _MyOrdersPageState extends State<MyOrdersPage> {
  String dropdownValue = "All";
  List<String> list_items = [
    "All",
    'All1',
    'payment1',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Мои заказы"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15 , vertical: 10),
        children: [
          //# choosing
          Container(
            child: Row(
              children: [
                Expanded(child: Row(
                  children: [
                    // DropdownButton<String>(
                    //   selectedItemBuilder: (BuildContext context) {
                    //     return list_items.map<Widget>((String item) {
                    //       return Container(
                    //           padding: EdgeInsets.only(left: 15),
                    //           alignment: Alignment.centerLeft,
                    //           decoration: BoxDecoration(
                    //               borderRadius: BorderRadius.circular(2),
                    //               border: Border.all(
                    //                   color: Colors.grey.withOpacity(.4)
                    //               )
                    //           ),
                    //           width: 120,
                    //           child: Row(
                    //               mainAxisAlignment:
                    //               MainAxisAlignment.spaceBetween,
                    //               children: [
                    //                 Text(item),
                    //                 Icon(Icons.arrow_drop_down_sharp)
                    //               ]));
                    //     }).toList();
                    //   },
                    //   value: dropdownValue,
                    //   iconSize: 0.0,
                    //   underline: Container(
                    //     height: 0,
                    //   ),
                    //   onChanged: (String? newValue) {
                    //     setState(() {
                    //       dropdownValue = newValue!;
                    //     });
                    //   },
                    //   items: list_items.map((String item) {
                    //     return DropdownMenuItem(
                    //         child: Container(
                    //           width: 100,
                    //           child: Center(
                    //             child: Text(item),
                    //           ),
                    //         ),
                    //         value: item);
                    //   }).toList(),
                    // ),
                    dropDownButtonsColumn(list_items, dropdownValue),
                    SizedBox(width: 5),
                    Icon(Icons.payment)
                  ],
                ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.local_shipping_outlined),
                      SizedBox(width: 5,),
                      Container(
                        height: 48,
                        width: 120,
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          border: Border.all(
                            color: Colors.grey.withOpacity(.4),
                          )
                        ),
                        child: Text(dropdownValue, style: TextStyle(fontSize: 16)),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, item){
              return orders(DateTime.now(), DateTime.now(), "Unpaid", "Order Placed", 4500000);
            },
          ),
        ],
      ),
    );
  }
  Widget orders(DateTime dateTime, DateTime date, String payment_sts, String delivery_sts, double cost) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.white10,
            blurRadius: 1,
            offset: Offset(4, 8),
          )
        ],
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: Colors.grey.withOpacity(0.4),
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(dateTime.toString(), style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.calendar_today, size: 18,),
                  SizedBox(width: 8),
                  Text(date.toString()),
                ],
              ),
              Text("\$$cost", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.payment, size: 18),
              SizedBox(width: 8),
              Text("Payment Status - $payment_sts"),
              SizedBox(width: 8),
              if(payment_sts == "Unpaid")
                Icon(FontAwesomeIcons.solidTimesCircle, color: Colors.red, size: 18,)
              else
        Icon(FontAwesomeIcons.solidCheckCircle, color: Colors.green)
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.local_shipping_outlined, size: 18,),
              SizedBox(width: 8),
              Text("Delivery Status - $delivery_sts")
            ],
          ),

        ],
      ),
    );
  }
  Widget dropDownButtonsColumn(List<String> list, String hint){
    return Container(
      height: 48,
      width: 120,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(3)),
        border: Border.all(
          color: Colors.grey.withOpacity(0.4)
        ),
      ),
      child: Theme(
          data: Theme.of(context).copyWith(
               // background color for the dropdown items
              buttonTheme: ButtonTheme.of(context).copyWith(
                alignedDropdown: true,  //If false (the default), then the dropdown's menu will be wider than its button.
              )
          ),
          child: DropdownButtonHideUnderline(  // to hide the default underline of the dropdown button
            child: DropdownButton<String>(
              iconEnabledColor: Color(0xFF595959),  // icon color of the dropdown button
              items: list.map((String value){
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value,
                    style: TextStyle(
                        fontSize: 15
                    ),
                  ),
                );
              }).toList(),
              hint: Text(hint,style: TextStyle(color: Color(0xFF8B8B8B),fontSize: 15),),  // setting hint
              onChanged: (String? value){
                setState(() {
                  dropdownValue = value!;  // saving the selected value
                });
              },
              value: dropdownValue,  // displaying the selected value
            ),
          )
      ),
    );
  }
}
