import "package:flutter/material.dart";

class ReelsView extends StatelessWidget {
  const ReelsView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 10,
      physics: NeverScrollableScrollPhysics(), 
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), 
      itemBuilder: (context, index) => Image.asset('lib/images_insta/image'+ ( index + 1 ).toString() +'.jpg'),
      
      );
  }
}