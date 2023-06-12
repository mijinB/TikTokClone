import 'package:flutter/material.dart';
import 'package:tiktok_clone_study/constants/gaps.dart';
import 'package:tiktok_clone_study/constants/sizes.dart';

class UsernameScreen extends StatelessWidget {
  const UsernameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sign up',
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Sizes.size32,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gaps.v36,
            Text(
              'Create username',
              style: TextStyle(
                fontSize: Sizes.size20 + Sizes.size2,
                fontWeight: FontWeight.w800,
              ),
            ),
            Gaps.v14,
            Text(
              'You can always change this later.',
              style: TextStyle(
                color: Colors.grey,
                fontSize: Sizes.size14 + Sizes.size1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
