import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:open_api_demo_project/api_service.dart';
import 'package:openapi/openapi.dart';

void main() async {
  ApiService apiService = ApiService();
  await apiService.init();

  runApp(MyApp(apiService: apiService));
}

class MyApp extends StatelessWidget {
  final ApiService apiService;

  const MyApp({super.key, required this.apiService});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Local API Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(apiService: apiService),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final ApiService apiService;

  const MyHomePage({super.key, required this.apiService});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Local API Example')),
      body: Center(
        child: ElevatedButton(
          style: const ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.lightGreenAccent)),
          onPressed: () async {
            try {
              // Fetching data from your local API
              Response<List<Task>> response =
                  await apiService.clientAPi.tasksGet();
              print('Response: ${response}');
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
