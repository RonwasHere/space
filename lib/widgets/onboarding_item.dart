import 'package:flutter/material.dart';

import '../theme.dart';

class OnboardingItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const OnboardingItem({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 90),
        Image.asset(
          imageUrl,
          width: double.infinity,
        ),
        SizedBox(height: 100),
        Text(
          title,
          style: blackTextStyle.copyWith(
            fontSize: 26,
          ),
        ),
        SizedBox(height: 10),
        Text(
          subtitle,
          style: greyTextStyle.copyWith(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
