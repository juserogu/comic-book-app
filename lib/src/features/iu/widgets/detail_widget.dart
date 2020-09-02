import 'package:comic_book_aplication/src/features/models/comic_model.dart';
import 'package:comic_book_aplication/src/features/models/details_model.dart';
import 'package:flutter/material.dart';

class DetailWidget extends StatelessWidget {
  ResultsDetail comic;

  DetailWidget({@required this.comic});

  @override
  Widget build(BuildContext context) {
    return ItemList(
      detail: comic,
    );
  }
}

class ItemList extends StatelessWidget {
  final ResultsDetail detail;
  final Volume volume;
  final GestureTapCallback onTap;

  ItemList({this.detail, this.onTap, this.volume});

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Expanded(
        child: _detailsContain(context),
      ),
      Expanded(
        child: _imageComic(context),
      ),
    ]);
  }

  _imageComic(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.8,
      width: size.width * 0.4,
      child: FadeInImage(
          placeholder: AssetImage('assets/no-image.png'),
          image: NetworkImage(detail?.image?.originalUrl ?? '')),
    );
  }

  Widget _detailsContain(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.8,
      width: size.width * 0.6,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(children: [
            Text('Characters'),
            Divider(),
            _createCharacter(detail.characterCredits),
          ]),
          Column(children: [
            Text('Teams'),
            Divider(),
            _createCharacter(detail.teamCredits),
          ]),
          Column(children: [
            Text('Locations'),
            Divider(),
            _createCharacter(detail.locationCredits),
          ]),
        ],
      ),
    );
  }

  Widget _createCharacter(List<Volume> characterCredits) {
    return Wrap(
        children: characterCredits.map((e) {
      return Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.0),
          child: Text(e?.name ?? ''));
    }).toList());
  }
}
