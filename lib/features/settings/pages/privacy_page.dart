import 'package:flutter/material.dart';

import '../../../core/config/app_colors.dart';
import '../../../core/widgets/custom_app_bar.dart';

class PrivacyPage extends StatelessWidget {
  const PrivacyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).viewPadding.top,
            color: AppColors.appBar,
          ),
          const CustomAppBar(title: 'Privacy Policy'),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              children: const [
                SizedBox(height: 20),
                Text(
                  'Your privacy is important to us. Please review our Privacy Policy to understand how we collect, use, and protect your personal information.\nIntellectual Property\nAll content, trademarks, logos, and intellectual property related to Med Glossary are the property of their respective owners. You agree not to infringe on these rights.',
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
                      'Disclaimers and Limitation of Liability',
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
                  '1. No Medical Advice: The information provided by Med Glossary is for informational purposes only and is not intended as medical advice. Always consult a healthcare professional for medical advice, diagnosis, or treatment.\n2. Warranty Disclaimer: Med Glossary is provided "as is" and without warranties of any kind, either express or implied. We do not warrant that the app will be error-free or uninterrupted.\n3. Limitation of Liability: To the fullest extent permitted by law, Med Glossary shall not be liable for any indirect, incidental, special, consequential, or punitive damages, or any loss of profits or revenues, whether incurred directly or indirectly, or any loss of data, use, goodwill, or other intangible losses, resulting from your use of the app.',
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
                      'Indemnification',
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
                  'You agree to indemnify and hold Med Glossary, its affiliates, officers, agents, and employees harmless from any claims, liabilities, damages, losses, and expenses, including reasonable attorney\'s fees, arising out of or in any way connected with your use of the app or violation of these Terms and Conditions.',
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
                      'Changes to Terms and Conditions',
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
                  'We reserve the right to modify these Terms and Conditions at any time. We will notify you of any changes by posting the new Terms and Conditions on this page. Your continued use of the app after any such changes constitutes your acceptance of the new Terms and Conditions.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'BarlowM',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
