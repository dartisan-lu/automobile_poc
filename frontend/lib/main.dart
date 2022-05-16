import 'package:automobile_frontend/features/main/mobile_scaffold.dart';
import 'package:automobile_frontend/features/main/web_scaffold.dart';
import 'package:automobile_frontend/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    isMobile(BuildContext context) => (MediaQuery.of(context).size.width > 600);
    return MaterialApp(
        title: 'Automobile',
        theme: defaultTheme,
        locale: const Locale.fromSubtags(languageCode: "fr"),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        localeListResolutionCallback: (deviceLocales, supportedLocales) {
          if (deviceLocales != null) {
            for (final locale in deviceLocales) {
              if (supportedLocales.contains(locale)) {
                return locale;
              }
            }
          }
          return const Locale('en');
        },
        routes: <String, WidgetBuilder>{
          '/type': (BuildContext context) => const WebScaffold(),
        },
        home: OrientationBuilder(builder: (context, orientation) {
          return isMobile(context) ? const WebScaffold() : const MobileScaffold();
        }));
  }
}
