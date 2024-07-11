import 'package:go_router/go_router.dart';

import '../../features/home/pages/home_page.dart';
import '../../features/settings/pages/about_page.dart';
import '../../features/settings/pages/privacy_page.dart';
import '../../features/settings/pages/terms_page.dart';
import '../../features/splash/splash_page.dart';
import '../../features/word/models/word.dart';
import '../../features/word/pages/word_page.dart';

final routerConfig = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/word',
      builder: (context, state) => WordPage(
        word: state.extra as Word,
      ),
    ),
    GoRoute(
      path: '/terms',
      builder: (context, state) => const TermsPage(),
    ),
    GoRoute(
      path: '/about',
      builder: (context, state) => const AboutPage(),
    ),
    GoRoute(
      path: '/privacy',
      builder: (context, state) => const PrivacyPage(),
    ),
  ],
);
