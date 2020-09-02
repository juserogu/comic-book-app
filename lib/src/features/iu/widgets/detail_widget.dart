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
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,

      children: <Widget>[      
        _detailsContain(context),          
       _imageComic(context),
     
    ]);
  }

  _imageComic(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.8,
      width: size.width * 0.6,
      child: FadeInImage(
          fit: BoxFit.fill,
          placeholder: AssetImage('assets/no-image.png'),
          image: NetworkImage(detail?.image?.originalUrl ?? '')),
    );
  }

  Widget _detailsContain(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.8,
      width: size.width * 0.4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(children: [
            Text('Characters', style: TextStyle(fontWeight: FontWeight.bold),),
            Divider(thickness: 10,),
            _createCharacter(detail.characterCredits),
          ]),
          Column(children: [
            Text('Teams',style: TextStyle(fontWeight: FontWeight.bold)),
            Divider(thickness: 10),
            _createCharacter(detail.teamCredits),
          ]),
          Column(children: [
            Text('Locations',style: TextStyle(fontWeight: FontWeight.bold)),
            Divider(thickness: 10),
            _createCharacter(detail.locationCredits),
          ]),
        ],
      ),
    );
  }

  Widget _createCharacter(List<Volume> characterCredits) {
    return Wrap(
      runSpacing: 20,
      spacing: 4,
        children: characterCredits.map((e) {
      return Container(        
          padding: EdgeInsets.symmetric(horizontal: 4.0),          
          child: Text(e?.name ?? ''));
    }).toList());
  }
}
