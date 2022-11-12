import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

import '../HomePage.dart';
import 'actualDetailPage.dart';

class OneCategory extends StatelessWidget {
  const OneCategory({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text("Categories",style: TextStyle(color: Colors.black),),
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: Icon(Icons.arrow_back_ios_new,color: Colors.black,)),
      ),
      body: Container(
             padding: EdgeInsets.only(left: 10,right:10,top: 20),
             child: StaggeredGridView.countBuilder(
              crossAxisCount: 4,
              itemCount:new Images().images.length,
              itemBuilder: (BuildContext context, int index) =>  InkWell(
                onTap: (){
                Get.to(ActualDetailPage(imageUrl: new Images().images[index], liked: false, likes: 25));
                },
                child: Ink(
                  decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10.0),
                 color: Colors.grey,
                 image: DecorationImage(
                   image: NetworkImage(new Images().images[index]),
                     fit: BoxFit.fill
                   )
                  ),
               ),
              ),
              staggeredTileBuilder: (int index) =>
                  new StaggeredTile.count(2, index.isEven ? 3 : 2),
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
          ),
           ),
    );
  }
}