import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'image_gallery.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyCwoPvRFTMnjoKFDr21uxyCNaCw3FhvlPE",
      appId: "1:514779891364:web:210eec466b0db31b844831",
      messagingSenderId: "514779891364",
      projectId: "image-gallery-web",
      storageBucket: "image-gallery-web.appspot.com",
    ),
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Locale? _locale = const Locale('pt');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image gallery app',
      home: ImageGallery(),
      locale: _locale,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
