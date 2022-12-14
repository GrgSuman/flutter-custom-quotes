import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myown/pages/OneCategory.dart';

class FilterCategory extends StatelessWidget {
  const FilterCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text("Category",style: TextStyle(color: Colors.black),),
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: Icon(Icons.arrow_back_ios_new,color: Colors.black,)),
      ),
      body: Container(
        color: Colors.white,
       padding: EdgeInsets.only(top: 30),
        child: GridView.count(
            crossAxisSpacing: 10,
            mainAxisSpacing: 20,
            crossAxisCount: 3,
            children: [

              IconButton(onPressed: (){
                 Get.to(OneCategory());
              }, icon: Icon(Icons.ac_unit)),

              InkWell(
                onTap: (){
                  print("object");
                  Get.to(()=>OneCategory());
                },
                child: MyCircle(image: "โญ", category: "Success")
                ),

              MyCircle(image: "๐", category: "Happiness"),
              MyCircle(image: "๐โโ๏ธ", category: "Alone"),
              MyCircle(image: "๐ฏ", category: "Focus"),
              MyCircle(image: "โจ", category: "Life"),
              MyCircle(image: "๐งก", category: "Love"),
              MyCircle(image: "๐ง๐ฝ", category: "Attitide"),
              MyCircle(image: "๐ฅ", category: "Inspiration"),
              MyCircle(image: "๐", category: "College"),

            ]),
      ),
    );
  }
}



class MyCircle extends StatelessWidget {

  final String category;
  final String image;
  const MyCircle({ Key? key, required this.category,required this.image }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
       
      },
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundColor: Color.fromRGBO(245, 245, 245, 1),
            child: Text(
              image,
              style: TextStyle(fontSize: 35),
            ),
          ),
          Text(category, style: TextStyle(fontSize: 12))
        ],
      ),
    );
  
  }
}
