```dart
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Process jsonData
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } on SocketException catch (e) {
    print('Network error: $e');
    // Handle network errors specifically (e.g., show a user-friendly message)
  } on FormatException catch (e) {
    print('JSON format error: $e');
    // Handle JSON parsing errors
  } catch (e) {
    print('General error: $e');
    // Handle other unexpected exceptions
  }
}
```