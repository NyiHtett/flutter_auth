import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
              title: const Text('Rest Api Call',),
              backgroundColor: Colors.white,
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: (){
                  fetchData();
              },
            ),
    );
  }
}


  void fetchData() async {
    final response = await http.get(Uri.parse('https://rickandmortyapi.com/api'));
    if (response.statusCode == 200) {
      // Request was successful, parse and process the response
      final data = response.body;
      print('Response: $data');
      print("hello world");

    } else {
      // Request failed, handle the error

      print('Failed to load data, status code: ${response.statusCode}');
    }
  }

