import 'package:flutter/material.dart';

class ChooseCategory extends StatelessWidget {
  const ChooseCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Flexible(
                flex: 1,
                child: Container(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "What you like?",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Text(
                                'Skip',
                                style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 0.7)),
                              ),
                              Icon(Icons.arrow_forward_ios,
                                  size: 15,
                                  color: Color.fromRGBO(0, 0, 0, 0.7)),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: Text("It helps us to recommend good quotes."))
                  ],
                )),
              ),
              Flexible(
                flex: 3,
                child: Container(
                  padding: EdgeInsets.only(top: 10),
                  child: GridView.count(
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 20,
                      crossAxisCount: 3,
                      children: [

                        MyCircle(image: "⭐",category: "Success"),
                        MyCircle(image: "😁",category: "Happiness"),
                        MyCircle(image: "💂‍♀️",category: "Alone"),
                        MyCircle(image: "🎯",category: "Focus"),
                        MyCircle(image: "✨",category: "Life"),
                        MyCircle(image: "🧡",category: "Love"),
                        MyCircle(image: "🧒🏽",category: "Attitide"),
                        MyCircle(image: "🥇",category: "Inspiration"),
                        MyCircle(image: "🎓",category: "College"),

                      ]),
                ),
              ),
              Flexible(
                flex: 1,
                child: Column(
                  children: [
                    SizedBox(height: 25),
                    Container(
                      height: 45,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Get Started"),
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(208, 150, 131, 1),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30))),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyCircle extends StatefulWidget {
 final String image;
 final String category;

  const MyCircle({Key? key,required this.image, required this.category}) : super(key: key);

  @override
  _MyCircleState createState() => _MyCircleState();
}

class _MyCircleState extends State<MyCircle> {
 bool clicked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          clicked = !clicked;
        });
      },
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundColor:clicked ?Colors.yellow:Color.fromRGBO(245, 245, 245, 1),
            child: Text(widget.image,style: TextStyle(fontSize: 35),),
          ),
          Text(widget.category, style: TextStyle(fontSize: 12))
        ],
      ),
    );
  }
}
