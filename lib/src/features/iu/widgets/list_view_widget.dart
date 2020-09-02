import 'package:comic_book_aplication/src/features/models/comic_model.dart';
import 'package:flutter/material.dart';
import '../comic_details_page.dart';

class ListScroll extends StatelessWidget {
  List<Result> comics;

  ListScroll({@required this.comics});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: comics
          .map((e) => _ItemList(
                result: e,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ComicDetailsPage(
                                comicId: e.apiDetailUrl,
                              )));
                },
              ))
          .toList(),
    );
  }
}

class _ItemList extends StatelessWidget {
  final Result result;
  final GestureTapCallback onTap;
  _ItemList({this.result, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FadeInImage(
                  width: 130,
                  height: 150,
                  fit: BoxFit.fill,
                  placeholder: AssetImage('assets/no-image.jpg'),
                  image: NetworkImage(
                    result.image.originalUrl,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(result?.name ?? 'No name',
                        overflow: TextOverflow.ellipsis),
                    Text('# ${result.issueNumber}'),
                    Text(result?.dateAdded ?? 'No date'),
                  ],
                ),
              ],
            ),
          ),
          Divider()
        ],
      ),
    );
  }
}
