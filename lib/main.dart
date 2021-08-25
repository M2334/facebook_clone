import 'package:facebook_clone/tabs/groups.dart';
import 'package:facebook_clone/tabs/home.dart';
import 'package:facebook_clone/tabs/menu.dart';
import 'package:facebook_clone/tabs/notifications.dart';
import 'package:facebook_clone/tabs/videos.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
     child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('facebook',style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.blue
        ),),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search,color: Colors.black,),
            onPressed: (){},
          ),
          IconButton(
              icon: Icon(Icons.message_outlined,color: Colors.black,),
            onPressed: (){},
          ),
        ],
        bottom: TabBar(
          unselectedLabelColor: Colors.black54,
          indicatorColor: Colors.blue,
          labelColor: Colors.blue,
          tabs: [
          Tab(icon: Icon(Icons.home),),
          Tab(icon: Icon(Icons.group),),
          Tab(icon: Icon(Icons.ondemand_video),),
          Tab(icon: Icon(Icons.notifications_none),),
          Tab(icon: Icon(Icons.menu),),
        ],),
      ),
      body: TabBarView(
        children: <Widget>[
          HomeScreen(),
          MenuScreen(),
          GroupScreen(),
          VideosScreen(),
          NotificationsScreen(),
        ],
      ),
    ));
  }
}

