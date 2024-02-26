import 'package:flutter/material.dart';

class ToolImage extends StatelessWidget {
  const ToolImage({super.key});

  @override
  Widget build(BuildContext context) {

    String flutterImageUrl = 'https://firebasestorage.googleapis.com/v0/b/portfolio-images-7eba9.appspot.com/o/flutter.png?alt=media&token=80d9f19a-277b-491c-bb54-51598e770152';
    String dartImageUrl = 'https://firebasestorage.googleapis.com/v0/b/portfolio-images-7eba9.appspot.com/o/dart.png?alt=media&token=798546fd-7e39-4e4c-8321-18d9388f478c';
    String androidImageUrl = 'https://firebasestorage.googleapis.com/v0/b/portfolio-images-7eba9.appspot.com/o/andrioid.png?alt=media&token=2f305d68-3333-4cd4-a0e7-8d93400e523f';
    
    Widget ToolFutures(String imageUrl){
      return FutureBuilder(
        future: precacheImage(NetworkImage(imageUrl), context),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot){
          if (snapshot.connectionState == ConnectionState.waiting){
            return CircularProgressIndicator();
          }else if (snapshot.hasError){
            return Text('Err');
          } else{
            return Container(
              height: 40,
              width: 40,
              child: Image(image: NetworkImage(imageUrl)),
            );
          }
        },

      );
    }

    return Row(
      children: [
        
        ToolFutures(dartImageUrl),
        
        ToolFutures(flutterImageUrl),
        
        ToolFutures(androidImageUrl),
      ],
    );
    ;
  }
}
