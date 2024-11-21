import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 243, 247, 114),
        appBar: AppBar(
          title: const Text('Context Menu with Popups'),
        ),
        body: const Center(
          child: ItemCard(),
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  const ItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6.0,
      margin: const EdgeInsets.all(16.0),
      color:
          const Color.fromARGB(255, 8, 15, 14), 
      child: ListTile(
        contentPadding: const EdgeInsets.all(16.0),
        title: const Text(
          'Item Title',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(
                255, 251, 254, 254), 
          ),
        ),
        subtitle: const Text('Item Description'),
        trailing: PopupMenuButton<String>(
          onSelected: (String value) {
            switch (value) {
              case 'Edit':
                _showEditDialog(context);
                break;
              case 'View':
                _showViewDialog(context);
                break;
              case 'Delete':
                _showDeleteConfirmationDialog(context);
                break;
            }
          },
          itemBuilder: (BuildContext context) {
            return [
              const PopupMenuItem<String>(
                value: 'Edit',
                child: Text('Edit'),
              ),
              const PopupMenuItem<String>(
                value: 'View',
                child: Text('View'),
              ),
              const PopupMenuItem<String>(
                value: 'Delete',
                child: Text('Delete'),
              ),
            ];
          },
        ),
      ),
    );
  }

  void _showEditDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: const Color.fromARGB(
              255, 247, 241, 126), 
          title: const Text('Edit Item',
              style: TextStyle(
                  color: Color.fromARGB(
                      255, 241, 250, 118))), 
          content: const Text('Edit details for the item.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); 
              },
              child: const Text('Close', style: TextStyle(color: Colors.teal)),
            ),
          ],
        );
      },
    );
  }

  void _showViewDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: const Color.fromARGB(
              255, 225, 245, 127), 
          title: const Text('View Item',
              style:
                  TextStyle(color: Colors.teal)), 
          content: const Text('View details for the item.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); 
              },
              child: const Text('Close', style: TextStyle(color: Colors.teal)),
            ),
          ],
        );
      },
    );
  }

  void _showDeleteConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: const Color.fromARGB(
              255, 254, 254, 122), 
          title: const Text('Confirm Delete',
              style:
                  TextStyle(color: Colors.teal)), 
          content: const Text('Are you sure you want to delete this item?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); 
                _showSnackbar(context, 'Item deleted');
              },
              child: const Text('Delete', style: TextStyle(color: Colors.red)),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); 
              },
              child: const Text('Cancel', style: TextStyle(color: Colors.teal)),
            ),
          ],
        );
      },
    );
  }

  void _showSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.teal, 
        duration: const Duration(seconds: 2),
      ),
    );
  }
}
