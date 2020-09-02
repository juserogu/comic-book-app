import 'package:comic_book_aplication/src/features/iu/List_view_page.dart';
import 'package:comic_book_aplication/src/features/iu/grid_view_page.dart';
import 'package:flutter/material.dart';

class PrPage extends StatefulWidget {
  PrPage({Key key}) : super(key: key);

  @override
  _PrPageState createState() => _PrPageState();
}

class _PrPageState extends State<PrPage> {

  TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          centerTitle: true,
          title: Text('ComicBook',style: TextStyle(fontSize: 28),),
         bottom:  
            TabBar(
              controller: _tabController,              
              tabs: [ 
                Tab (
                  icon: Icon(Icons.grid_on,)
               ),   
              Tab(icon: Icon(Icons.menu)),
          ],
        ),
           ) ,
         body: TabBarView(
          children: <Widget>[
            GridPage(),
            Listpage()
          ],),
        ),
    );   
  }
  }