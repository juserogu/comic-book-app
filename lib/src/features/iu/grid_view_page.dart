import 'package:comic_book_aplication/src/features/iu/widgets/grid_widget.dart';
import 'package:comic_book_aplication/src/features/providers/comic_provider.dart';
import 'package:comic_book_aplication/src/features/models/comic_model.dart';
import 'package:flutter/material.dart';

class GridPage extends StatelessWidget {
  

  final comicProvider = ComicsProvider();

  

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Result>>(
        future: comicProvider.getComics(),
        builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
          if (snapshot.hasData) {
            return GridWidget(comics: snapshot.data);
          } else {
            return Container(child: Center(child: CircularProgressIndicator()));
          }
        });
  }


// container (){
//   return GestureDetector(
//     child: Container(
//       decoration: BoxDecoration(       
//         borderRadius: BorderRadius.circular(20)
//       ),
//       height: 200,
//       width: 40,
//       child: Column(
//        children: <Widget>[
//         Image.network('https://upload.wikimedia.org/wikipedia/commons/0/09/TheCheethcat.jpg'
//         , height: 100,width: 100,fit: BoxFit.cover,),
//         Text('Deadpool'),
//         Text('Deadpoll'),
//         Text('october')
//        ],
//       ),
//      ),
//     onTap: (){},
//   );
// }




}