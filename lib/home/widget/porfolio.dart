import 'package:flutter/material.dart';
import 'package:portfoliio/widgets/sizebox.dart';
import 'package:flutter/animation.dart';

class Porfolio extends StatelessWidget {
  Porfolio({super.key, required this.theme});
  var theme;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text('Porfolio >>>', style: theme,),
        ),
        SizedBox(
          height: 200,
          width: double.infinity,
          child: ListView.separated(
            separatorBuilder: (context, index)=> HorizontalSpace(10),
            scrollDirection: Axis.horizontal,
            itemCount: 5,
              itemBuilder: (context, index){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  width: 200,
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Text('Processing...', style: TextStyle(color: Colors.white),),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(4, 4),
                          blurRadius: 4,
                          color: Colors.grey),
                      BoxShadow(
                          offset: Offset(4, 4),
                          blurRadius: 4,
                          color: Colors.black38)
                    ]
                  ),
                ),
              );
              },),
        ),
      ],
    );
  }
}
