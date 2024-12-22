import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:openapi/openapi.dart';
import 'api_client.dart';

void main() {
  final apiClient = ApiClient('http://127.0.0.1:62556');
  final api = DefaultApi(apiClient.dio); // Use the public getter

  runApp(MyApp(apiClient: apiClient, api: api));
}

class MyApp extends StatelessWidget {
  final ApiClient apiClient;
  final DefaultApi api;

  const MyApp({super.key, required this.apiClient, required this.api});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Local API Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(api: api),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final DefaultApi api;

  const MyHomePage({super.key, required this.api});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Local API Example')),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            try {
              // Fetching data from your local API
              final response = await api.tasksGet();
              print('Response: ${response.data}');
              // Optionally show data in a Snackbar
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                    content: Text('Fetched ${response.data?.length} tasks')),
              );
            } catch (e) {
              print('Error: $e');
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Failed to fetch data: $e')),
              );
            }
          },
          child: const Text('Fetch Data'),
        ),
      ),
    );
  }
}
