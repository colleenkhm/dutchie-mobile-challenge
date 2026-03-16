import 'package:flutter/material.dart';
import 'package:flutter_challenge/app/pages/home/home_page.dart';
import 'package:flutter_challenge/app/theme/app_theme.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class App extends StatelessWidget {
  final client = GraphQLClient(
    link: HttpLink('http://127.0.0.1:5000/graphql'),
    cache: GraphQLCache(store: HiveStore()),
  );

  App({super.key});

  @override
  Widget build(BuildContext context) => GraphQLProvider(
    client: ValueNotifier<GraphQLClient>(client),
    child: MaterialApp(
      title: 'Flutter Challenge',
      theme: AppTheme.themeData,
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

void main() async {
  await initHiveForFlutter();

  runApp(App());
}
