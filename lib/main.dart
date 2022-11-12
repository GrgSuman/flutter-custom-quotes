import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myown/HomePage.dart';
// import 'package:myown/pages/FilterCategory.dart';
import 'package:oktoast/oktoast.dart';
// import 'package:myown/pages/actualDetailPage.dart';


void main(){
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return OKToast(
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: "Poppins",
        ),
        home:HomePage()
      ),
    );
  }
}