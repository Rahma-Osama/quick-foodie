import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quick_foodie/core/utils/app_colors.dart';
import 'package:quick_foodie/core/utils/app_router.dart';
import 'package:quick_foodie/features/auth/data/repos/auth_repo_implementation.dart';
import 'package:quick_foodie/features/auth/presentation/manager/auth%20cubit/auth_cubit.dart';
import 'package:quick_foodie/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,

  );
  runApp(const QuickFoodie());
}

class QuickFoodie extends StatelessWidget {
  const QuickFoodie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthCubit(AuthRepoImplement())),
      ],
      child: MaterialApp.router(
        theme: ThemeData(
          textTheme: GoogleFonts.manropeTextTheme(),
          primaryColor: AppColors.mainRed,
        ),
        routerConfig: AppRouter.router,
      ),
    );
  }
}
