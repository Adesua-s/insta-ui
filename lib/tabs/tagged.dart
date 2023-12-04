import "package:flutter/material.dart";

class TaggedView extends StatelessWidget {
  const TaggedView({super.key});

  @override
  Widget build(BuildContext context) {
   return GridView.builder(
      itemCount: 2,
      physics: NeverScrollableScrollPhysics(), 
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), 
      itemBuilder: (context, index) => Image.asset('lib/images_insta/image'+ ( index + 1 ).toString() +'.png'),
      
      );
  }
}