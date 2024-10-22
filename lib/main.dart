import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyCwoPvRFTMnjoKFDr21uxyCNaCw3FhvlPE",
      appId: "1:514779891364:web:210eec466b0db31b844831",
      messagingSenderId: "514779891364",
      projectId: "image-gallery-web",
    ),
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image gallery app',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image gallery web'),
        ),
        body: Center(
          child: Text('Firebase initialized succesfully'),
        ),
      ),
    );
  }
}
