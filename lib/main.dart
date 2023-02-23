import 'dart:io';
import 'package:dashboard/dbHelper/customers.dart';
import 'package:dashboard/screens/finance/finance.dart';
import 'package:dashboard/controllers/constants.dart';
import 'package:dashboard/screens/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:window_size/window_size.dart';
import 'package:provider/provider.dart';
import 'package:dashboard/screens/schedule/schedule.dart';
import 'controllers/navigation.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowTitle('My App');
    setWindowMinSize(const Size(1280, 720));
  }

  runApp(
    MultiProvider(
      providers: [
        ListenableProvider<NavigationController>(
          create: (_) => NavigationController(),
        )
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    NavigationController navigation =
        Provider.of<NavigationController>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dashboard',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(
            Theme.of(context).textTheme.apply(bodyColor: Colors.white)),
        canvasColor: secondaryColor,
      ),
      home: Navigator(
        pages: [
          const MaterialPage(child: MainScreen()),
          if (navigation.screenName == '/Schedule')
            const MaterialPage(child: Schedule()),
          if (navigation.screenName == '/Customers')
            const MaterialPage(child: Customers()),
          if (navigation.screenName == '/Finance')
            const MaterialPage(child: Finance()),
        ],
        onPopPage: ((route, result) {
          bool? popStatus = route.didPop(result);
          if (popStatus == true) {
            Provider.of<NavigationController>(context, listen: false)
                .changeScreen('/');
          }
          return popStatus;
        }),
      ),
    );
  }
}
