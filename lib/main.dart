import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:porfolio/pages/home.dart';

Future main() async {
  // FireBase Config
  // https://www.youtube.com/watch?v=yL5_NHq-QMY
  // https://www.youtube.com/watch?v=RZVtdZt7Fao
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyA8tgnzbEX1c4GMwAqlBT4MYkvDNKsfxEg",
      authDomain: "crlts-mrtnz.firebaseapp.com",
      projectId: "crlts-mrtnz",
      storageBucket: "crlts-mrtnz.appspot.com",
      messagingSenderId: "245336098410",
      appId: "1:245336098410:web:c09c9ecdb5c38d11c86c13",
      measurementId: "G-C5V4LPHSCQ",
    ),
  );
  // FireBase Config
  // Initialize Firebase No sabemos aun si necesitamos
  // const app = initializeApp(firebaseConfig);
  // const analytics = getAnalytics(app);
  runApp(MyApp());
}

// Color c = const Color(0xFF42A5F5);
// Color backgrounGray = const Color(0xff171d49);

class MyApp extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Crlts Mrtnz',
      theme: ThemeData(
        textTheme: GoogleFonts.robotoMonoTextTheme(
          Theme.of(context).textTheme,
        ),
        //brightness: Brightness.dark,
        primaryColor: Colors.grey[800],
      ),
      home: const Home(),
    );
  }
}
