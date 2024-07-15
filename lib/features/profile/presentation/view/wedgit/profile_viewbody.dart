 
import 'package:buh_blog_app/features/profile/presentation/view/wedgit/custom_profile_user.dart';
import 'package:buh_blog_app/features/profile/presentation/view/wedgit/listof_top_posts.dart';
import 'package:buh_blog_app/features/profile/presentation/view/wedgit/more_button.dart';
import 'package:buh_blog_app/features/profile/presentation/view/wedgit/title_of_posts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var sized = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(
        left: sized.width * .013,
        right: sized.width * .013,
      ),
      child: const Column(
        children: [
          CustomProfileUser(),
          SizedBox(
            height: 10,
          ),
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
      ),
    );
  }
}
