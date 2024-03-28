import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quick_foodie/core/utils/app_router.dart';

void main() {
  runApp(const QuickFoodie());
}

class QuickFoodie extends StatelessWidget {
  const QuickFoodie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        textTheme: GoogleFonts.aBeeZeeTextTheme()
      ),
      routerConfig: AppRouter.router,
    );
  }
}
