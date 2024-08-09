import 'package:buh_blog_app/core/constants/app_colors.dart';
import 'package:buh_blog_app/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class PostTitle extends StatefulWidget {
  const PostTitle({super.key});

  @override
  State<PostTitle> createState() => _PostTitleState();
}

class _PostTitleState extends State<PostTitle> {
  String _selectedValue = 'Top posts';
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Posts",
            style: AppTextStyles.textStyle24.copyWith(fontSize: 20),
          ),
        ),
        Container(
          height: 30,
          width: 105,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: AppColors.cMainColor,
              borderRadius: BorderRadius.circular(22)),
          child: DropdownButton<String>(
  underline: const Text(""),
   
   
  dropdownColor: AppColors.cMainColor,
  iconEnabledColor: AppColors.cWhiteColor,
  style: AppTextStyles.textStyle18.copyWith(fontSize: 13,),
  borderRadius: const BorderRadius.only(
    topLeft: Radius.circular(20),
    topRight: Radius.circular(20),
  ),
  value: _selectedValue,
  onChanged: (String? newValue) {
    setState(() {
      _selectedValue = newValue!;
    });
  },
  items: <String>['Top posts', 'Trendy']
      .map<DropdownMenuItem<String>>((String value) {
    return DropdownMenuItem<String>(
      value: value,
      child: Text(
        value,
         
      ),
    );
  }).toList(),
),

        )
      ],
    );
  }
}
