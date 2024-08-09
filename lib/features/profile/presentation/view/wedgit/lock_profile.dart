import 'package:buh_blog_app/core/constants/app_text_styles.dart';
import 'package:buh_blog_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LockProfile extends StatelessWidget {
  const LockProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 263,
      height: 294,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 200,
            height: 200,
            child: SvgPicture.asset(AssetsData.lockSvg),
          ),
          const SizedBox(height: 9),
          Text('This Account is Private ',
              style: AppTextStyles.textStyle20.copyWith(
                color: const Color(0xFF8D8D94),
                fontWeight: FontWeight.w700,
                letterSpacing: 1,
              )),
          Text('Follow This Account If You Want To See Their Posts',
              textAlign: TextAlign.center,
              style: AppTextStyles.textStyle20.copyWith(
                fontSize: 15,
                color: const Color(0xFF8D8D94),
                fontWeight: FontWeight.w700,
                letterSpacing: 1,
              )),
        ],
      ),
    );
  }
}
