import 'package:buh_blog_app/core/constants/app_colors.dart';
import 'package:buh_blog_app/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class GenderType extends StatefulWidget {
  const GenderType({super.key});

  @override
  State<GenderType> createState() => _GenderTypeState();
}

class _GenderTypeState extends State<GenderType> {
    String groupvalue="Male" ;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Radio(
              fillColor: WidgetStatePropertyAll(AppColors.cWhiteColor),
              activeColor: AppColors.cWhiteColor,
              value: "Male",
              groupValue: groupvalue,
              onChanged: (value) {
                setState(() {
                  groupvalue = value!;
                });
                
              },
            ),
            Text("Male  ",style:AppTextStyles.textStyle24
                  .copyWith(color: AppColors.cWhiteColor, fontSize: 15) ,)
          ],
        ),
      const  SizedBox(width: 70,),
        Row(
          children: [
            Radio(
              fillColor: WidgetStatePropertyAll(AppColors.cWhiteColor),
              activeColor: AppColors.cWhiteColor,
              value: "Female",
              groupValue: groupvalue,
              onChanged: (value) {
                setState(() {
                  groupvalue = value!;
                });
                
              },
            ),
            Text("Female",style:AppTextStyles.textStyle24
                  .copyWith(color: AppColors.cWhiteColor, fontSize: 15) ,)
          ],
        ),
      ],
    );
  }
}
