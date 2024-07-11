import 'package:flutter/material.dart';

import '../../../core/config/app_colors.dart';
import '../../../core/widgets/custom_app_bar.dart';

class TermsPage extends StatelessWidget {
  const TermsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).viewPadding.top,
            color: AppColors.appBar,
          ),
          const CustomAppBar(title: 'Terms & Conditions'),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              children: const [
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      'Introduction',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'BarlowB',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  'Welcome to Med Glossary. By downloading, accessing, or using our app, you agree to comply with and be bound by the following Terms and Conditions. Please review them carefully. If you do not agree to these terms, you should not use our app.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'BarlowM',
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      'Use of the App',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'BarlowB',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  '1. Eligibility: You must be at least 18 years old to use Med Glossary. By using the app, you represent and warrant that you meet this age requirement.\n2. License: Med Glossary grants you a limited, non-exclusive, non-transferable, and revocable license to use the app for personal, non-commercial purposes in accordance with these Terms and Conditions.\n3. Prohibited Conduct: You agree not to:\n- Use the app for any unlawful purpose.\n- Copy, modify, or distribute any part of the app without our prior written consent.\n- Reverse engineer, decompile, or disassemble the app.\n- Interfere with or disrupt the app or its servers.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'BarlowM',
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      'User Content',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'BarlowB',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  '1. Content Submission: By submitting content (e.g., feedback, suggestions) to Med Glossary, you grant us a worldwide, royalty-free, perpetual, irrevocable, and sublicensable right to use, reproduce, modify, adapt, publish, translate, create derivative works from, distribute, and display such content.\n\n2. Responsibility: You are solely responsible for the content you submit. You agree not to submit any content that is illegal, offensive, or infringes on the rights of others.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'BarlowM',
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
