import 'package:comic_book_aplication/src/features/iu/grid_view_page.dart';
import 'package:comic_book_aplication/src/features/iu/widgets/list_view_widget.dart';
import 'package:comic_book_aplication/src/features/models/comic_model.dart';
import 'package:comic_book_aplication/src/features/providers/comic_provider.dart';
import 'package:flutter/material.dart';

class Listpage extends StatelessWidget {
  final comicProvider = ComicsProvider();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Result>>(
        future: comicProvider.getComics(),
        builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
          if (snapshot.hasData) {
            return ListScroll(comics: snapshot.data);
          } else {
            return Container(child: Center(child: CircularProgressIndicator()));
          }
        });
  }
}
