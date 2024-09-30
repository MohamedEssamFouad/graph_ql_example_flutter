import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

const String fetchCountriesQuery = """
  query {
    countries {
      code
      name
      capital
    }
  }
""";

class CountriesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Countries List'),
      ),
      body: Query(
        options: QueryOptions(
          document: gql(fetchCountriesQuery),
        ),
        builder: (QueryResult result, {VoidCallback? refetch, FetchMore? fetchMore}) {
          if (result.hasException) {
            return Center(
              child: Text(result.exception.toString()),
            );
          }

          if (result.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          final List countries = result.data?['countries'] ?? [];

          return ListView.builder(
            itemCount: countries.length,
            itemBuilder: (context, index) {
              final country = countries[index];
              return ListTile(
                title: Text(country['name']),
                subtitle: Text(country['capital'] ?? 'No capital'),
                trailing: Text(country['code']),
              );
            },
          );
        },
      ),
    );
  }
}