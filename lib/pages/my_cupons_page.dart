import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MyCuponsPage extends StatefulWidget {
  static final String id = "my_cupons_page";


  @override
  _MyCuponsPageState createState() => _MyCuponsPageState();
}

class _MyCuponsPageState extends State<MyCuponsPage> {
  @override
  Widget build(BuildContext context) {
    var cupons_List = [2];
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text("Мои купоны и сертификата", style: TextStyle(color: Colors.black87, fontSize: 15),),
      ),
      body: ListView(
        children: [
          //# enter code, code cupon, buttom
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(left: 20, right: 20, top: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Введите код", style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 25),
                //# TextField
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(239, 243, 246, 1),
                    borderRadius: BorderRadius.circular(3),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 1
                      ),
                    ]
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Код купона или сетификата",
                      hintStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w400)
                    ),
                  )
                ),
                SizedBox(height: 25),
                //# Button
                Container(
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(8, 78, 201, 1),
                        blurRadius: 1
                      )
                    ]
                  ),
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3.0),
                    ),
                    color: Colors.blue,
                    onPressed: (){},
                    child: const Text(
                      "Применить",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Text("ВАШИ КУПОНЫ", style: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ),
          SizedBox(height: 2),
          Divider(thickness: 2),
          cupons_List.isEmpty ?
              Center(
                child: Text("У вас нет активированных купонов", style: TextStyle(fontWeight: FontWeight.bold))
              ) :
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 8,
            itemBuilder: (context, i){
              return cupons(1, "", "", "", "", "");
            },
          ),
        ],
      ),
    );
  }
  Widget cupons(int cupon_number, String code, String type, String data_start, String data_end, String params){
    return Container(

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("№", style: TextStyle(fontWeight: FontWeight.bold)),
                Text("Код купона: $code"),
                Text("Тип купона: $type"),
                Text("Дата начала: $data_start"),
                Text("Дата окончания: $data_end"),
                Text("Параметры: $params"),
              ],
            ),
          ),
          Divider(thickness: 2,)

        ],
      ),
    );
  }
}
