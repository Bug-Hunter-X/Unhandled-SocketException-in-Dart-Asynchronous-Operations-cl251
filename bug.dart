```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success, parse the JSON response
      final jsonData = jsonDecode(response.body);
      // Process jsonData 
    } else {
      // Handle error responses
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions during the network request
    print('Error: $e');
    // Here's where you might not handle a specific exception type,
    // such as a SocketException for network issues.
    // This can cause unexpected behavior if you're not prepared for it.
  }
}
```