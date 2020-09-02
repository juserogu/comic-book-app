import 'package:comic_book_aplication/src/features/iu/widgets/detail_widget.dart';
import 'package:comic_book_aplication/src/features/models/details_model.dart';
import 'package:comic_book_aplication/src/features/providers/comic_provider.dart';
import 'package:flutter/material.dart';

class ComicDetailsPage extends StatelessWidget {
  final String comicId;
  final comicProvider = ComicsProvider();

  ComicDetailsPage({this.comicId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ComicBook', style: TextStyle(fontSize: 28)),
          centerTitle: true,
        ),
        body: FutureBuilder<ResultsDetail>(
            future: comicProvider.getComicsDetails(comicId),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {                
                return DetailWidget(comic: snapshot.data);
              } else {
               
                return Container(
                    child: Center(child: CircularProgressIndicator()));
              }
            }));
  }
}
