import 'package:comic_book_aplication/src/features/iu/List_view_page.dart';
import 'package:comic_book_aplication/src/features/iu/comic_details_page.dart';
import 'package:comic_book_aplication/src/features/iu/grid_view_page.dart';
import 'package:comic_book_aplication/src/features/iu/home_page.dart';
import 'package:comic_book_aplication/src/features/iu/prueb.dart';
import 'package:flutter/material.dart';


 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.grey[200],
        primaryColorDark: Colors.grey[350],       
      ),
      title: 'Comic Book Aplication',      
      initialRoute: 'prueba',
      routes: { 
      'home'    : (BuildContext context) => HomePage(),
      'grid'    : (BuildContext context) => GridPage(),
      'list'    : (BuildContext context) => Listpage(), 
      'prueba'  : (BuildContext context) => PrPage(),
      'details' : (BuildContext context) => ComicDetailsPage()  
      }      
    );    
  }
}