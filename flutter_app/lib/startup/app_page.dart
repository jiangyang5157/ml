import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:ml/core/injection.dart';
import 'package:ml/core/nav.dart';
import 'package:ml/core/string_localization.dart';
import 'package:ml/startup/splash_page.dart';

class AppPage extends StatefulWidget {
  AppPage({Key key}) : super(key: key);

  @override
  _AppPageState createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  // Flutter first StatefulWidget dispose method not called when app quit
  // When the app is exited then no further Dart code is executed. So this is working as intended.
  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        const StringDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: StringDelegate.supportedLanguageCodes
          .map<Locale>((languageCode) => Locale(languageCode)),
      onGenerateRoute: locator<Nav>().router.generator,
      home: SplashPage(),
      theme: ThemeData.dark(),
    );
  }
}
