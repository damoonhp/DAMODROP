
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en'), Locale('fa')],
      path: 'assets/lang',
      fallbackLocale: Locale('en'),
      child: const DamodropApp(),
    ),
  );
}

class DamodropApp extends StatelessWidget {
  const DamodropApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Damodrop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: SplashScreen(),
    );
  }
}
