import 'package:flutter/material.dart';
class MyBallPage extends StatefulWidget {
  const MyBallPage({Key? key}) : super(key: key);

  @override
  _MyBallPageState createState() => _MyBallPageState();
}

class _MyBallPageState extends State<MyBallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Balls"),),
      body: ListView(
        children: [
          Container(
            color: Color.fromRGBO(225, 234, 242, 1),
            child: Container(
              margin: EdgeInsets.only(top: 10, left: 15, right: 15),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Мой баланс", style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(height: 20,),
                  Text("5"),
                  SizedBox(height: 10,),
                  Divider(),
                ],
              ),
            ),
          ),
          Container(height: 5,
            color: Color.fromRGBO(225, 234, 242, 1),
          ),
          Container(
            padding: EdgeInsets.only(top: 8),
            height: 25,
            child: Center(child: Text("БАЛЛЫ", style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromRGBO(75, 91, 91, 1)),)),
          ),
          Divider(),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, i){
              return balls("01.05.2021", "Начисление баллов в рамках заказа №68723459-0002", 2500000);
            },
          ),
        ],
      ),
    );
  }
  Widget balls(String data, String operation, double sum) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Дата и время:",style: TextStyle(fontWeight: FontWeight.bold)),
              Text(data,style: TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Операция:", style: TextStyle(fontWeight: FontWeight.bold, ),),
              Text(operation, style: TextStyle(fontSize: 8, fontWeight: FontWeight.normal,color: Color.fromRGBO(75, 91, 91, 1)),),
            ],
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Сумма:",style: TextStyle(fontWeight: FontWeight.bold)),
              Text("$sum сум,",style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
          SizedBox(height: 5,),
          Divider(thickness: 1,),
        ],
      ),
    );
  }
}
