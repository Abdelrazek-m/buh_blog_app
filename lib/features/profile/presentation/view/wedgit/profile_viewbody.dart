// import 'package:buh_blog_app/core/utils/assets.dart';
import 'package:buh_blog_app/features/profile/presentation/view/wedgit/custom_profile_user.dart';
import 'package:buh_blog_app/features/profile/presentation/view/wedgit/visitor_profile.dart';
// import 'package:buh_blog_app/features/profile/presentation/view/wedgit/user_profile.dart';
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
          VisitorProfile()
        ],
      ),
    );
  }
}
