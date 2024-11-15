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
          const Color.fromARGB(255, 8, 15, 14), // Light teal color for the card
      child: ListTile(
        contentPadding: const EdgeInsets.all(16.0),
        title: const Text(
          'Item Title',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(
                255, 251, 254, 254), // Dark teal color for the title
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
              255, 247, 241, 126), // Light teal background for the dialog
          title: const Text('Edit Item',
              style: TextStyle(
                  color: Color.fromARGB(
                      255, 241, 250, 118))), // Dark teal color for title
          content: const Text('Edit details for the item.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
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
              255, 225, 245, 127), // Light teal background for the dialog
          title: const Text('View Item',
              style:
                  TextStyle(color: Colors.teal)), // Dark teal color for title
          content: const Text('View details for the item.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
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
              255, 254, 254, 122), // Light teal background for the dialog
          title: const Text('Confirm Delete',
              style:
                  TextStyle(color: Colors.teal)), // Dark teal color for title
          content: const Text('Are you sure you want to delete this item?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
                _showSnackbar(context, 'Item deleted');
              },
              child: const Text('Delete', style: TextStyle(color: Colors.red)),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
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
        backgroundColor: Colors.teal, // Teal color for the Snackbar background
        duration: const Duration(seconds: 2),
      ),
    );
  }
}
