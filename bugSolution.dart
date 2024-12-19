```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Process jsonData
      print('Data fetched successfully: $jsonData');
    } else {
      // More descriptive error handling
      throw Exception('Failed to load data. Status code: ${response.statusCode}, Body: ${response.body}');
    }
  } catch (e) {
    // Improved exception handling
    print('Error fetching data: $e');
    // Additional actions to handle error
    // For example, display an error message to the user, retry the operation,
    // or implement fallback logic.
  }
}
```