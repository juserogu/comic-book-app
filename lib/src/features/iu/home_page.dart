import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: Text('ComicBook',style: TextStyle(fontSize: 28),),
      ),
      body: Scaffold(
        appBar: AppBar(  
          backgroundColor: Theme.of(context).primaryColorDark,      
          title: Container(child: Text('Latest Issues')),
          actions: <Widget>[
            Container(
              width: 70,
              child: IconButton(                
                icon:Row(
                  children: <Widget>[
                     Icon ( Icons.menu),
                    Text('List'),                
                  ],
                ), 
                onPressed: (){}),
            ),
            Container(
              width: 70,
              child: IconButton(
                icon: Row(
                  children: <Widget>[
                    Icon(Icons.grid_on),
                    Text('Grid')
                  ],
                ) ,
                onPressed: (){}),
            )  
          ],

        )

      ),
    );
  }
}