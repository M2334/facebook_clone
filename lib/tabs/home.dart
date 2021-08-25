import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 360.0,
                height: 50.0,
                //color: Colors.blue,
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        IconButton(icon: Icon(Icons.person_pin,size: 30.0,),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0,top: 2.0),
                        child:OutlineButton(
                          borderSide: BorderSide(
                            width: 1.0,
                            color: Colors.black,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(60.0),
                          ),
                          child: Text('What youe mind ?                           '),
                        ),
                        )],
                    ),
                  ],
                ),
              )
            ],
          ),
          Divider(color: Colors.black,),
          Row(
            children: <Widget>[
              Container(
                width: 360.0,
                height: 40.0,
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          width: 120.0,
                          height: 40.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.videocam,color: Colors.red,),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('Live'),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          width: 120.0,
                          height: 40.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.photo_size_select_actual_outlined,color: Colors.green,),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                    Text('photo'),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          width: 120.0,
                          height: 40.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.location_on_outlined,color: Colors.red,),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('location'),
                                ],
                              )
                            ],
                          ),

                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                width: 360.0,
                height: 10.0,
                color: Colors.black26,
                child:SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      MyStorey()
                    ],
                  ),
                ),
              ),


              // 4th layer closed



              // 5th layer open


              Row(
                children: <Widget>[
                  Container(
                    width: 360,
                    height: 10,
                    color: Colors.red,
                  ),
                ],
              ),
            ],
          ),
          FriendPost(proPic: 'images/image6.jpg',
              proName: 'Sayed Said',
              dateAndLocation: 'yesterday at 9:54 AM . German',
              comments: 'Comments 850',
            like: '8k',
            post: 'images/image2.jpg',
            caption: 'Nature',
          ),
          FriendPost(proPic: 'images/image12.jpg',
              proName: 'Mohamed Said',
              dateAndLocation: 'yesterday at 2:54 AM . Egypt',
            comments: 'Comments 2k',
            like: '1k',
            post: 'images/image12.jpg',
            caption: 'fredom',
          ),
          FriendPost(proPic: 'images/image5.jpg',
            proName: 'Nour Ghazal',
            dateAndLocation: '5 june at 9:54 AM . Barazile',
            comments: 'Comments 100',
            like: '1k',
            post: 'images/image3.jpg',
            caption: 'Love',
          ),
          FriendPost(proPic: 'images/image11.jpg',
            proName: 'Kareem ',
            dateAndLocation: 'yesterday at 9:54 AM . shrbeen',
            comments: 'Comments 200',
            like: '8k',
            post: 'images/image6.jpg',
            caption: 'Work',
          ),
          FriendPost(proPic: 'images/image1.jpg',
            proName: 'Mohamed Osamaa',
            dateAndLocation: '5 AM . shawaaa',
            comments: 'Comments 74',
            like: '100',
            post: 'images/image9.jpg',
            caption: 'My Favoriate',
          ),
          FriendPost(proPic: 'images/image11.jpg',
            proName: 'Shrief Essa',
            dateAndLocation: '8 decmber at 9:54 AM . Metghmr',
            comments: 'Comments 300',
            like: '150',
            post: 'images/image5.jpg',
            caption: 'stay at home ',
          ),
          FriendPost(proPic: 'images/image7.jpg',
            proName: 'Mohamed hossinee',
            dateAndLocation: 'yesterday at 10 AM . smanoud',
            comments: 'Comments 60',
            like: '1k',
            post: 'images/image8.jpg',
            caption: 'My Drink mee',
          ),
          FriendPost(proPic: 'images/image2.jpg',
            proName: 'Ahmed Elbana',
            dateAndLocation: '1 Agst at 5 PM . Mansoura',
            comments: 'Comments 850',
            like: '8k',
            post: 'images/image3.jpg',
            caption: 'Nature',
          ),



        ],
      ),
    );
  }
}

Widget MyStorey(){
  return Container(
    width: 120,
    height: double.infinity,
    color: Colors.red,
  );
}
Widget FriendPost({proPic,proName,dateAndLocation,comments,like,post,caption}){
  return Padding(
    padding: const EdgeInsets.only(top: 5.0,bottom: 5.0),
    child: Row(
      children: <Widget>[
        Container(
          width: 360.0,
          height: 550.0,
          //color: Colors.blue,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 360.0,
                height: 50.0,
                child: Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0,right: 5.0),
                          child: Container(
                            width: 50.0,
                            height: 50.0,
                            child: Container(
                              width: 40.0,
                              height: 40.0,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40.0),
                                  border: Border.all(
                                    color: Colors.brown,
                                    style: BorderStyle.solid,
                                  ),
                                  image: DecorationImage(
                                    image: AssetImage(proPic),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              width: 240.0,
                              height: 20.0,
                              child: Text(proName,style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold),),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              width: 240.0,
                              height: 30.0,
                              child: Text(dateAndLocation,style: TextStyle(fontSize: 13.0),),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: 60.0,
                          height: 50.0,
                          child: IconButton(
                            icon: Icon(Icons.more_horiz_rounded),
                            onPressed: (){},
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: 360.0,
                height: 400.0,
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 360.0,
                      height: 20.0,
                      child: Text(caption),
                    ),
                    Container(
                      width: 360.0,
                      height: 380.0,
                      color: Colors.pinkAccent,
                      child: Image(
                        image: AssetImage(
                          post,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 360.0,
                height: 30.0,
                //color: Colors.pink,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          width: 70.0,
                          height: 30.0,
                          //color: Colors.blue,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Icon(Icons.thumb_up,size: 17.0,color: Colors.blue,),
                              Icon(Icons.favorite,size: 17.0,color: Colors.red,),
                              Text(like)
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 140.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            width: 150.0,
                            height: 30.0,
                            //color: Colors.blue,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Text(comments),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 360.0,
                height: 30.0,
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 120.0,
                      height: 30.0,
                      //color: Colors.blue,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          IconButton(
                              icon: Icon(Icons.thumb_up,size: 20.0,
                                color: Colors.blue,
                              ),
                              onPressed:() {},
                              ),
                          Text('Like'),
                        ],
                      ),
                    ),
                    Container(
                      width: 120.0,
                      height: 30.0,
                      //color: Colors.red,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          IconButton(icon: Icon(Icons.comment,size: 20.0,color: Colors.black54,),
                              onPressed:() {},
                          ),
                          Text('Comment'),
                        ],
                      ),
                    ),
                    Container(
                      width: 120.0,
                      height: 30.0,
                      //color: Colors.blue,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          IconButton(icon: Icon(Icons.screen_share_outlined,size: 20.0,color: Colors.black,),
                              onPressed:() {},
                          ),
                          Text('Share'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0,bottom: 5.0),
                child: Container(
                  width: 360.0,
                  height: 5.0,
                  color: Colors.black26,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
