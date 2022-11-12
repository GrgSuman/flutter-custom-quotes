import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';

class DetailPage extends StatefulWidget {
  final bool liked;
  final int likes;
  final String imageUrl;
  const DetailPage({Key? key,required this.imageUrl,required this.liked, required this.likes}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
 Widget icon = Icon(Icons.favorite,color: Colors.red,);
 

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Expanded(
            child: Stack(children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    image: DecorationImage(
                        image: NetworkImage(widget.imageUrl),
                        fit: BoxFit.fill)),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.black,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  margin: EdgeInsets.only(top: 10, right: 10),
                  child: Wrap(
                    children: [
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 18,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("${widget.likes}",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )
                    ],
                  ),
                ),
              )
            ]),
          ),
          Container(
            height: 60,
            child: Row(
              children: [
                Flexible(
                    flex: 1,
                    child: Center(
                      child: IconButton(
                        onPressed: () {
                        
                        },
                        icon:widget.liked ? icon : Icon(Icons.favorite_border),
                      ),
                    )),
                Flexible(
                    flex: 1,
                    child: Center(
                      child: IconButton(
                        onPressed: () {
                          showToast("Copied", position: ToastPosition.bottom);
                        },
                        icon: Icon(Icons.copy),
                      ),
                    )),
                Flexible(
                    flex: 1,
                    child: Center(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.download),
                      ),
                    )),
                Flexible(
                    flex: 1,
                    child: Center(
                      child: IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                //bottom sheet on click share
                                return Container(
                                  height: 240,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Share",
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ),
                                      Flexible(
                                        flex: 1,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border(
                                            bottom: BorderSide(
                                              color:
                                                  Colors.black.withOpacity(0.1),
                                              width: 1.0,
                                            ),
                                          )),
                                          child: ListTile(
                                            leading: Icon(
                                              Icons.facebook,
                                              color: Colors.blue,
                                            ),
                                            title: Text("Facebook"),
                                            onTap: () {},
                                          ),
                                        ),
                                      ),
                                      Flexible(
                                        flex: 1,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border(
                                            bottom: BorderSide(
                                              color:
                                                  Colors.black.withOpacity(0.1),
                                              width: 1.0,
                                            ),
                                          )),
                                          child: ListTile(
                                            leading: Icon(
                                              Icons.face,
                                              color: Colors.blue,
                                            ),
                                            title: Text("Facebook"),
                                            onTap: () {},
                                          ),
                                        ),
                                      ),
                                      Flexible(
                                        flex: 1,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border(
                                            bottom: BorderSide(
                                              color:
                                                  Colors.black.withOpacity(0.1),
                                              width: 1.0,
                                            ),
                                          )),
                                          child: ListTile(
                                            leading: Icon(
                                              Icons.face,
                                              color: Colors.blue,
                                            ),
                                            title: Text("Facebook"),
                                            onTap: () {
                                              
                                            },
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              });
                        },
                        icon: Icon(Icons.share),
                      ),
                    )
                    )
              ],
            ),
          )
        ],
      ),
    );
  }
}
