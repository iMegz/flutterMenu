// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.orange,
    ),
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      drawer: Drawer(child:Text("Hi")),
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),
        title: Text("Food Menu",style:TextStyle(color: Colors.white)),
        actions: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
            child:Icon(
              Icons.food_bank,
              color: Colors.white,
              size: 48,
            ) ,
          )
          
        ],
      ),
      body: Menu(),
    ),
    )
  );


}



class Menu extends StatelessWidget {
  const Menu({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:  Column(
        verticalDirection: VerticalDirection.down,
        children: data,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
    )
    ;
  }
}

const arr = [
  {"title":"Pizza gamda awi","url":"assets/img1.jpg"},
  {"title":"Burger agmed men el pizza","url":"assets/img2.jpg"},
  {"title":"Just macaroni","url":"assets/img3.jpg"},
  {"title":"Chicken Panne","url":"assets/img4.jpg"},
  {"title":"7wawshi","url":"assets/img5.jpg"},
  {"title":"7wawshi bardo","url":"assets/img6.jpg"},
];


List<Widget> data = arr.map((e){
  return Container(
    margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Colors.orange
    ),
    height: 100,
    child: Row(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset(
        e["url"] ?? "",
        height: 100,
        width: 100,
        fit: BoxFit.cover,
      ),
      ),
      Padding(
        padding: EdgeInsets.only(left:20),
        child: Text(
        e["title"] ?? "",
        style: TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.w600
        ),
      ),
      )
    ],
  ),
  );
}).toList();

