import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'CounteryName.dart';

void main() async {
  await initHiveForFlutter();  // Initialize Hive for caching

  final HttpLink httpLink = HttpLink('https://countries.trevorblades.com/');

  ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      link: httpLink,
      cache: GraphQLCache(store: HiveStore()),
    ),
  );

  runApp(MyApp(client: client));
}

class MyApp extends StatelessWidget {
  final ValueNotifier<GraphQLClient> client;

  const MyApp({Key? key, required this.client}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: client,
      child: MaterialApp(
        title: 'GraphQL Countries Example',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: CountriesList(),
      ),
    );
  }
}