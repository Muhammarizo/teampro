import 'package:flutter/material.dart';
import 'package:teampro/constants.dart';

class AdressPage extends StatefulWidget {
  static final String id = "address_page";
  const AdressPage({Key? key}) : super(key: key);

  @override
  _AdressPageState createState() => _AdressPageState();
}

class _AdressPageState extends State<AdressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 3,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, i) {
                    return address("rrjdfhj dgfgc vcbvbcbc xkfg", "New York",
                        827004, "Albania", 998990529954);
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50.0,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    color: Colors.indigo,
                    onPressed: () {},
                    child: const Text(
                      "Добавить адрес доставки",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget address(
      String adress, String city, int postal_code, String country, int phone) {
    return InkWell(
      onTap: () {},
      child: Container(
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Address",
                    style: kFinal_text,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "City",
                    style: kFinal_text,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Postal Code",
                    style: kFinal_text,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Country",
                    style: kFinal_text,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Phone",
                    style: kFinal_text,
                  ),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    adress,
                    style: kCreating_text,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    city,
                    style: kCreating_text,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    postal_code.toString(),
                    style: kCreating_text,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    country,
                    style: kCreating_text,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    phone.toString(),
                    style: kCreating_text,
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.edit,
                            color: Colors.black54.withOpacity(0.6),
                            size: 20,
                          )),
                      SizedBox(
                        height: 23,
                      ),
                      InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.delete_forever_outlined,
                            color: Colors.black54.withOpacity(0.6),
                            size: 20,
                          )),
                      SizedBox(
                        height: 23,
                      ),
                      InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.location_on,
                            color: Colors.black54.withOpacity(0.6),
                            size: 20,
                          ))
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
