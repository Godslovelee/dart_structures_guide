import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Search Algorithm App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SearchScreen(),
    );
  }
}

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<int> sortedArray = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19]; // Example sorted array

  int target = 0;
  bool isTargetFound = false;

  void searchTarget() {
    // Binary search implementation
    int left = 0;
    int right = sortedArray.length - 1;
    while (left <= right) {
      int mid = left + ((right - left) ~/ 2);
      if (sortedArray[mid] == target) {
        setState(() {
          isTargetFound = true;
        });
        return;
      } else if (sortedArray[mid] < target) {
        left = mid + 1;
      } else {
        right = mid - 1;
      }
    }
    setState(() {
      isTargetFound = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Algorithm App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              onChanged: (value) {
                setState(() {
                  target = int.tryParse(value) ?? 0;
                });
              },
              decoration: InputDecoration(labelText: 'Enter target integer'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                searchTarget();
              },
              child: Text('Search'),
            ),
            SizedBox(height: 20),
            isTargetFound
                ? Text('$target exists in the array.')
                : Text('$target does not exist in the array.'),
          ],
        ),
      ),
    );
  }
}
