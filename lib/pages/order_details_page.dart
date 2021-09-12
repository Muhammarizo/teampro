import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OrderDetailsPage extends StatefulWidget {
  static final String id = "order_details_page";

  @override
  _OrderDetailsPageState createState() => _OrderDetailsPageState();
}

class _OrderDetailsPageState extends State<OrderDetailsPage> {
  Map<String, dynamic> shipping_addres = {
    "Name": "Mr.Customer",
    "Email": "customer@example.com",
    "Address": "Blog",
    "City": "Sed ea dolore offici",
    "Country": "Albania",
    "Phone": 377473,
    "Postal code": 12
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text("Order Details", style: TextStyle(color: Colors.pink)),
        ),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            //# Icons and descriptions
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                icons(Colors.pink, Icon(Icons.list_alt, color: Colors.pink),
                    "Order placed"),
                icons(Colors.blue, Icon(Icons.thumb_up, color: Colors.blue),
                    "Confirmed"),
                icons(
                    Colors.yellow,
                    Icon(Icons.local_shipping_outlined, color: Colors.yellow),
                    "On Delivery"),
                icons(
                    Colors.purple,
                    Icon(FontAwesomeIcons.checkDouble, color: Colors.purple),
                    "Delivered"),
              ],
            ),
            SizedBox(height: 5),
            // in this line should be checked widget
            SizedBox(height: 5),
            order_info(
                "202110519-10402751",
                DateTime.now(),
                "Pending",
                shipping_addres,
                "Express",
                "Cash on Delivery",
                "Delivered",
                8140000),
            SizedBox(height: 8),
            // Позвонить покупателю button
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                  border: Border.all(), borderRadius: BorderRadius.circular(1)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Позвонить покупателю",
                      style: TextStyle(fontWeight: FontWeight.w800)),
                  InkWell(
                    onTap: () {
                      // Позвонить покупателю
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.red,
                              blurRadius: 4,
                              offset: Offset(1, 1),
                            )
                          ],
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(50)),
                      child: Icon(Icons.call, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            // postrit marsgrut button
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                  border: Border.all(), borderRadius: BorderRadius.circular(1)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: Text("Построить маршрут доставки",
                          style: TextStyle(fontWeight: FontWeight.w800))),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            // Построить маршрут доставки
                          },
                          child: Container(
                            width: 70,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(67, 168, 160, 1),
                                    blurRadius: 3,
                                    offset: Offset(1, 1),
                                  )
                                ],
                                color: Color.fromRGBO(67, 168, 149, 1),
                                borderRadius: BorderRadius.circular(20)),
                            child: Icon(FontAwesomeIcons.locationArrow,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Text("Заметка покупателя",
                style: TextStyle(fontWeight: FontWeight.w800)),
            SizedBox(height: 6),
            // #TextField
            Container(
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1), border: Border.all()),
              child: TextField(
                showCursor: false,
                decoration: InputDecoration(
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 8),
            Center(
              child: Text("Ordered Product",
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      color: Colors.grey.shade800)),
            ),
            SizedBox(height: 8),
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                market_name("Shivaki"),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return ordered_product(
                        "Shivaki",
                        "images/watch.png",
                        "Умные часы Apple Watch SE, 44mm, 450 гр",
                        4500000,
                        "серый",
                        "Apple",
                        1);
                  },
                ),
                SizedBox(height: 10),
                market_name("Apple"),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return ordered_product(
                        "Shivaki",
                        "images/watch.png",
                        "Умные часы Apple Watch SE, 44mm, 450 гр",
                        4500000,
                        "серый",
                        "Apple",
                        1);
                  },
                )
              ],
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/5),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("SUB TOTAL", style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text("SHIPPING COST", style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text("DISCOUNT", style: TextStyle(fontWeight: FontWeight.bold)),

                        ],
                      ),
                      SizedBox(width: 50),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("9 000 000 сум", style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text("40 000 сум", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.deepPurple)),
                          SizedBox(height: 10),
                          Text("900 000 сум", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.pink)),

                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("GRAND TOTAL", style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(width: 50),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("8 140 000 сум", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.pink)),
                        ],
                      ),

                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }

  Widget icons(Color color, Icon icon, String icon_title) {
    return Column(
      children: [
        Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              border: Border.all(color: color, width: 2)),
          child: Center(child: icon),
        ),
        SizedBox(height: 3),
        Text(icon_title,
            style: TextStyle(
                color: Colors.grey, fontSize: 10, fontWeight: FontWeight.w800)),
      ],
    );
  }

  Widget order_info(
      String order_code,
      DateTime order_date,
      String payment_status,
      Map<String, dynamic> shipping_address,
      String shipping_method,
      String payment_method,
      String deliver_status,
      double total_amount) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2),
          border: Border.all(color: Colors.grey)),
      padding: EdgeInsets.only(top: 25, left: 10, right: 20, bottom: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // # order code
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Order Code",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black87.withOpacity(.8))),
                  SizedBox(height: 2),
                  Text(order_code,
                      style: TextStyle(
                          color: Colors.pink, fontWeight: FontWeight.bold))
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Shipping Method",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black87.withOpacity(.8))),
                  SizedBox(height: 2),
                  Text(shipping_method,
                      style: TextStyle(
                          color: Colors.pink, fontWeight: FontWeight.bold))
                ],
              )
            ],
          ),
          SizedBox(height: 8),
          // # order date
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Order Date",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black87.withOpacity(.8))),
                  SizedBox(height: 2),
                  Text(
                    order_date.toString().substring(0, 11),
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("Payment Method",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black87.withOpacity(.8))),
                  SizedBox(height: 2),
                  Text(payment_method,
                      style: TextStyle(
                          color: Colors.pink, fontWeight: FontWeight.bold))
                ],
              ),
            ],
          ),
          SizedBox(height: 8),
          // # payment method
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Payment Method",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black87.withOpacity(.8))),
                  SizedBox(height: 2),
                  Text(
                    payment_status,
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("Delivery Status",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black87.withOpacity(.8))),
                  SizedBox(height: 2),
                  Text(
                    deliver_status,
                    style: TextStyle(
                        color: Color.fromRGBO(67, 168, 149, 1),
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ],
          ),
          SizedBox(height: 6),
          // # Shipping address
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Shipping address",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87.withOpacity(.8))),
              Text("Total amount",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87.withOpacity(.8))),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Name: ${shipping_addres["Name"]}",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "Email: ${shipping_addres["Email"]}",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "Address: ${shipping_addres["Address"]}",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "City: ${shipping_addres["City"]}",
                style: TextStyle(color: Colors.grey),
              ),
              Text("${total_amount.toString()} сум",
                  style: TextStyle(
                      color: Colors.pink, fontWeight: FontWeight.bold)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Country: ${shipping_addres["Country"]}",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "Phone: ${shipping_addres["Phone"]}",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "Postal code: ${shipping_addres["Postal code"]}",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget ordered_product(String market_name, String image, String product_name,
      double cost, String color, String brend_name, int piece) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          //# karobka
          Container(
            padding: EdgeInsets.only(top: 5, bottom: 5, right: 10, left: 5),
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey, blurRadius: 2, offset: Offset(1, 1))
                ]),
            child: Row(
              children: [
                //# image
                Container(
                    width: 50,
                    child: Image(image: AssetImage(image), fit: BoxFit.fill)),
                SizedBox(width: 5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(product_name,
                        style: TextStyle(color: Colors.grey, fontSize: 10)),
                    SizedBox(height: 10),
                    Text("Цена: $cost сум",
                        style: TextStyle(color: Colors.grey, fontSize: 10)),
                    Text("Цвет: $color",
                        style: TextStyle(color: Colors.grey, fontSize: 10)),
                    Text("Бренд: $brend_name",
                        style: TextStyle(color: Colors.grey, fontSize: 10))
                  ],
                ),
                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("$piece шт.",
                        style: TextStyle(fontWeight: FontWeight.w800)),
                  ],
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget market_name(String market_name) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Магазин: $market_name",
            style: TextStyle(fontWeight: FontWeight.w800)),
        Text("Позвонить",
            style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold))
      ],
    );
  }
}
