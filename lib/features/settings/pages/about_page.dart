import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../core/config/app_colors.dart';
import '../../../core/widgets/custom_app_bar.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).viewPadding.top,
            color: AppColors.appBar,
          ),
          const CustomAppBar(title: 'About Us'),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              children: const [
                SizedBox(height: 20),
                Text(
                  'Welcome to Med Glossary, your comprehensive medical dictionary mobile app designed to empower healthcare professionals, students, and enthusiasts with accurate and up-to-date medical information at their fingertips.',
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
                      'Who We Are',
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
                  'At Med Glossary, we are a dedicated team of medical experts, software developers, and designers committed to revolutionizing the way medical knowledge is accessed and utilized. Our mission is to bridge the gap between complex medical terminology and user-friendly access, ensuring that everyone can understand and benefit from medical knowledge.',
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
                      'What We Offer',
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
                  '1. Extensive Medical Database: Our app features an extensive database of medical terms, conditions, medications, procedures, and more. Each entry is meticulously reviewed by medical professionals to ensure accuracy and reliability.\n\n2. User-Friendly Interface: We believe that accessing medical information should be intuitive and effortless. Our app\'s user-friendly interface allows you to search for terms quickly, with easy-to-navigate menus and clear definitions.\n\n3. Regular Updates: The field of medicine is constantly evolving, and so is our database. We provide regular updates to ensure that you have access to the latest medical terms and information.\n\n4. Offline Access: No internet? No problem. Med Glossary allows you to download content for offline access, ensuring that you have the information you need, whenever and wherever you need it.\n\n5. Personalization: Customize your experience with personalized bookmarks, search history, and saved searches. This feature allows you to quickly revisit important terms and concepts.\n\n6. Multimedia Resources: Enhance your understanding with our multimedia resources, including images, videos, and audio pronunciations. These additional resources provide a comprehensive learning experience.',
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
                      'Our Vision',
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
                  'We love to hear from our users! If you have any questions, feedback, or suggestions, please do not hesitate to contact us at:\n\nEmail: support@medglossary.com\nPhone: +1-800-MED-GLOSS\nAddress: 123 Health Lane, MedCity, TX 75001',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'BarlowM',
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Thank you for choosing Med Glossary. Together, we can make medical knowledge accessible to everyone.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'BarlowB',
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
