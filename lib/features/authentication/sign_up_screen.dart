import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_clone_study/constants/gaps.dart';
import 'package:tiktok_clone_study/constants/sizes.dart';
import 'package:tiktok_clone_study/features/authentication/log_in_screen.dart';
import 'package:tiktok_clone_study/features/authentication/username_screen.dart';
import 'package:tiktok_clone_study/features/authentication/widgets/auth_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  void _onLogInTap(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const LogInScreen(),
      ),
    );
  }

  void _onEmailTap(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const UsernameScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Sizes.size36,
          ),
          child: Column(
            children: [
              Gaps.v80,
              const Text(
                'Sign up for TikTok',
                style: TextStyle(
                  fontSize: Sizes.size24 + Sizes.size2,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Gaps.v20,
              const Text(
                'Create a profile, follow other accounts, make your own videos, and more.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: Sizes.size16 + Sizes.size1,
                ),
              ),
              Gaps.v32,
              AuthButton(
                icon: const FaIcon(FontAwesomeIcons.solidCircleUser),
                text: 'Use email & password',
                onTapFunc: _onEmailTap,
              ),
              Gaps.v14,
              AuthButton(
                icon: const FaIcon(FontAwesomeIcons.apple),
                text: 'Continue with apple',
                onTapFunc: (context) {},
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: Sizes.size2,
        color: Colors.grey.shade50,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: Sizes.size32,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Already have an account?',
                style: TextStyle(
                  fontSize: Sizes.size16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Gaps.h5,
              GestureDetector(
                onTap: () => _onLogInTap(context),
                child: Text(
                  'Log in',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: Sizes.size16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
