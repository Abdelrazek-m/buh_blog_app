 
import 'package:buh_blog_app/features/profile/presentation/view/wedgit/top_posts.dart';
import 'package:flutter/material.dart';

class ListOfTopPosts extends StatelessWidget {
  const ListOfTopPosts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var sized = MediaQuery.of(context).size;
    return SizedBox(
      width: sized.width * 1.3,
      height: 290,
      child: ListView.builder(
          padding: const EdgeInsets.only(right: 17, bottom: 7),
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const TopPosts();
          }),
    );
  }
}
