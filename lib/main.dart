import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_cats/provider/cats_provider.dart';
import 'package:test_cats/screens/home_screen.dart';

void main() => runApp(MyApp());

class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => CatsProvider(),
            lazy: false,
          )
        ],
      child: MyApp(),
    );
  }

}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(


      title: 'Material App',
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName : ( _ ) => const HomeScreen()
      },
    );
  }
}
