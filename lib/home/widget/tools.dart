import 'package:flutter/material.dart';

class ToolImage extends StatelessWidget {
  const ToolImage({super.key});

  @override
  Widget build(BuildContext context) {

    String flutterImageUrl = 'gs://portfolio-images-7eba9.appspot.com/dart.png';
    String dartImageUrl = 'gs://portfolio-images-7eba9.appspot.com/dart.png';
    String androidImageUrl = 'gs://portfolio-images-7eba9.appspot.com/andrioid.png';
    
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
