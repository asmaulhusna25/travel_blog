import 'package:flutter/material.dart';

class TravelListPage extends StatefulWidget {
  @override
  _TravelListPageState createState() => _TravelListPageState();
}

class _TravelListPageState extends State<TravelListPage> {
  List<String> destinations = [];
  TextEditingController destinationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Travel To-Do List'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              controller: destinationController,
              decoration: InputDecoration(
                labelText: 'Enter your next travel destination',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                destinations.add(destinationController.text);
                destinationController.clear();
              });
            },
            child: Text('Add Destination'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: destinations.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(destinations[index]),
                  trailing: IconButton(
                    icon: Icon(Icons.check),
                    onPressed: () {
                      setState(() {
                        // Remove the completed destination
                        destinations.removeAt(index);
                      });
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
