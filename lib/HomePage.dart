import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:myown/pages/FilterCategory.dart';
import 'package:myown/pages/actualDetailPage.dart';
import 'package:myown/pages/detailPage.dart';
import 'package:myown/pages/drawer.dart';





class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  Widget icon = Icon(Icons.favorite,color: Colors.red,);
  bool liked = false;
  int likes = 122;

  @override
  Widget build(BuildContext context) {



    return DefaultTabController(
      length: 3,
      child: Scaffold(
         drawer: myDrawer(),
        appBar: AppBar(
    
           leading: Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.menu_rounded),
            color: Colors.black,
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
    
          backgroundColor: Colors.white,
          elevation: 1,
          centerTitle: true,
    
          title: Text("MQ",
          style:TextStyle(
            fontSize: 24,
            color: Color.fromRGBO(208, 150, 131, 1),
            fontWeight: FontWeight.bold,
            letterSpacing: 2
            ),
          ),
    
          actions: [
            IconButton(
              onPressed: (){
            Get.to(()=>FilterCategory());
            },
             icon:Icon(Icons.apps),
             color: Colors.black
             )
          ],

            bottom: TabBar(
            indicatorColor:Color.fromRGBO(208, 150, 131, 1),
             isScrollable: true,
            tabs: [
               Tab(
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Text("Popular",
                  style: TextStyle(
                    color: Colors.black,
                  fontSize: 12
                  ),
                  ),
                ),
            ),

            Tab(
             child: Text("Quote of Day",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12
                ),
                ),
            ),

             Tab(
             child: Text("Recommended",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12
                ),
                ),
            ),

          ],
          ),
         
        ),

        body: TabBarView(
          children: [


         Container(
           padding: EdgeInsets.only(left: 10,right:10,top: 10),
           child: StaggeredGridView.countBuilder(
            crossAxisCount: 4,
            itemCount:new Images().images.length,
            itemBuilder: (BuildContext context, int index) =>  InkWell(
              onTap: (){
              Get.to(()=>ActualDetailPage(imageUrl: new Images().images[index], liked: false, likes: 25));
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

         //Quotes of Day
         DetailPage(
           imageUrl: "https://images.unsplash.com/photo-1578909196400-59f8f8156a05?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=375&q=80",
           liked: true,
           likes:15),

      
          Container(
           padding: EdgeInsets.only(left: 10,right:10,top: 10),
           child: StaggeredGridView.countBuilder(
            crossAxisCount: 4,
            itemCount:new Images().images.length,
            itemBuilder: (BuildContext context, int index) =>  InkWell(
              onTap: (){

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
        ],
        ),
        
      ),
    );
  }
}



class Images{
  List<String> images = [
    "https://images.unsplash.com/photo-1578909196400-59f8f8156a05?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=375&q=80",
    "https://images.unsplash.com/photo-1552508744-1696d4464960?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1528716321680-815a8cdb8cbe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=410&q=80",
    "https://images.unsplash.com/photo-1592211951067-6c3ce19cca90?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=282&q=80",
    "https://images.unsplash.com/photo-1558011554-b0dd73a08568?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80",
    "https://images.unsplash.com/photo-1522688306378-fbb315c6ba9a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=400&q=80",
    "https://images.unsplash.com/photo-1569229569803-69384f5efa83?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=375&q=80",
    "https://images.unsplash.com/photo-1580764194291-6288693ce463?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1542904990-579199bba13a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1912&q=80",
  ];
}