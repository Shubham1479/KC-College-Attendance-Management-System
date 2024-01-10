import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'dart:html';

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('http://127.0.0.1:5000/test'));

    ('Response status code: ${response.statusCode}'); // Check status code

    if (response.statusCode == 200) {
      try {
        final data = response.body;
        print(data); // Inspect decoded data
      } catch (Error) {
        print('Error parsing JSON: $Error'); // Handle JSON decoding errors
      }
    } else {
      print('Request failed with status: ${response.statusCode}');
    }
  } catch (error) {
    print('Error during request: $error'); // Catch general network errors
  }
}

void main() {
  fetchData(); // Ensure fetchData is called
}
