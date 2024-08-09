import 'package:buh_blog_app/features/profile/presentation/view/wedgit/count_follow.dart';
import 'package:flutter/material.dart';

class FollowingBlock extends StatelessWidget {
  const FollowingBlock({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CountFollow(
          followName: "Followers",
          numfollower: "122",
        ),
        SizedBox(
          height: 40,
          child: VerticalDivider(
            color: Colors.black12,
            thickness: 2,
          ),
        ),
        CountFollow(
          followName: "Feed",
          numfollower: "12",
        ),
        SizedBox(
          height: 40,
          child: VerticalDivider(
            color: Colors.black12,
            thickness: 2,
          ),
        ),
        CountFollow(
          followName: "Following",
          numfollower: "122",
        ),
      ],
    );
  }
}

