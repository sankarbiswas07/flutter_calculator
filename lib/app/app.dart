import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter learn",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.lightBlue,
          fontFamily: GoogleFonts.poppins().fontFamily),
      home: const HomeView(),
    );
  }
}
