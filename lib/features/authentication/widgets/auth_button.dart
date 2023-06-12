import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_clone_study/constants/sizes.dart';

class AuthButton extends StatelessWidget {
  final FaIcon icon;
  final String text;
  final void Function(BuildContext context) onTapFunc;

  const AuthButton({
    super.key,
    required this.text,
    required this.icon,
    required this.onTapFunc,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTapFunc(context),
      child: FractionallySizedBox(
        widthFactor: 1.0,
        child: Container(
          padding: const EdgeInsets.all(Sizes.size14),
          decoration: BoxDecoration(
            border: Border.all(
              width: Sizes.size1,
              color: Colors.grey.shade300,
            ),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: icon,
              ),
              Text(
                text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: Sizes.size16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
