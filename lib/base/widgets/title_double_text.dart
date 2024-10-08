import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/all_ticket_list.dart';

class TitleDoubleText extends StatelessWidget {
  const TitleDoubleText(
      {super.key, required this.titleText, required this.linkText});

  final String titleText;
  final String linkText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(titleText, style: AppStyles.headingStyle2),
        InkWell(
          onTap: () => Navigator.pushNamed(context, '/all-tickets'),
          child: Text(linkText,
              style:
                  AppStyles.textStyle.copyWith(color: AppStyles.primaryColor)),
        )
      ],
    );
  }
}
