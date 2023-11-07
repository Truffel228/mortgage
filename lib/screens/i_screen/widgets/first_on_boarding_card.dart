import 'package:flats/app_theme.dart';
import 'package:flats/widgets/flat_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class FirstOnBoardingCard extends StatelessWidget {
  const FirstOnBoardingCard({super.key, required this.onTap});
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      margin: const EdgeInsets.symmetric(horizontal: 24),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: AppTheme.darkColor,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppTheme.lightColor),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
              text: 'WELCOME TO THE\n',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.white,
                fontSize: 16,
              ),
              children: [
                TextSpan(
                  text: 'MortgagePro',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.green,
                    fontSize: 16,
                  ),
                ),
                TextSpan(text: 'APP!'),
              ],
            ),
          ),
          const Text(
            "We're here to help you quickly and conveniently estimate the cost of your mortgage and understand your monthly obligations.",
            style: TextStyle(
              color: AppTheme.lightColor,
              fontSize: 11,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            text: 'CONTINUE',
            onTap: onTap,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 4,
                width: 8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: const Color(0xFFF0F0F0),
                ),
              ),
              const SizedBox(width: 4),
              Container(
                height: 4,
                width: 8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: const Color(0xFF5C5C65),
                ),
              ),
            ],
          ),
          RichText(
            text: TextSpan(
              style: const TextStyle(
                color: AppTheme.lightColor,
                fontSize: 10,
              ),
              children: [
                TextSpan(
                  text: 'Terms of Use  ',
                  recognizer: TapGestureRecognizer()..onTap = () {},
                ),
                const TextSpan(text: '|'),
                TextSpan(
                  text: '  Privacy Policy',
                  recognizer: TapGestureRecognizer()..onTap = () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
