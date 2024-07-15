import 'package:buh_blog_app/features/profile/presentation/view/wedgit/listof_top_posts.dart';
import 'package:buh_blog_app/features/profile/presentation/view/wedgit/more_button.dart';
import 'package:buh_blog_app/features/profile/presentation/view/wedgit/title_of_posts.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TitleOfPosts(
          text: "Your Top Posts",
        ),
        ListOfTopPosts(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TitleOfPosts(text: "Your Latest Posts"),
            MoreButton(),
          ],
        ),
        ListOfTopPosts(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text(""),
            MoreButton(),
          ],
        ),
      ],
    );
  }
}
