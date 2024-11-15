import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView Example',
      theme: ThemeData(
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.teal,
          textTheme: ButtonTextTheme.primary,
        ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.black87, fontSize: 18),
          bodyMedium: TextStyle(color: Colors.black54, fontSize: 16),
          displayLarge: TextStyle(
              color: Colors.teal, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
        ),
        dialogTheme: DialogTheme(
          backgroundColor: Colors.white,
        ),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.teal)
            .copyWith(secondary: Colors.orange),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> _items = [];
  final TextEditingController _textController = TextEditingController();

  void _addItem() {
    final String newItem = _textController.text.trim();
    if (newItem.isNotEmpty) {
      setState(() {
        _items.add(newItem);
        _textController.clear();
      });
    }
  }

  void _showItemDialog(String item) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Selected Item',
            style: TextStyle(color: Colors.teal),
          ),
          content: Text(
            item,
            style: TextStyle(color: Colors.teal[800]),
          ),
          actions: [
            TextButton(
              child: Text(
                'OK',
                style: TextStyle(color: Colors.teal),
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }

  void _showContextMenu(BuildContext context, int index) async {
    final result = await showMenu(
      context: context,
      position: RelativeRect.fromLTRB(100, 100, 100, 100),
      items: [
        PopupMenuItem(
          value: 'edit',
          child: Text('Edit Item', style: TextStyle(color: Colors.teal)),
        ),
        PopupMenuItem(
          value: 'delete',
          child: Text('Delete Item', style: TextStyle(color: Colors.red)),
        ),
        PopupMenuItem(
          value: 'unselect',
          child: Text('Unselect Item', style: TextStyle(color: Colors.orange)),
        ),
        PopupMenuItem(
          value: 'exit',
          child: Text('Exit', style: TextStyle(color: Colors.grey)),
        ),
      ],
    );

    switch (result) {
      case 'edit':
        _textController.text = _items[index];
        _showEditDialog(index);
        break;
      case 'delete':
        _showDeleteConfirmationDialog(index);
        break;
      case 'unselect':
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Item unselected'),
            backgroundColor: Colors.teal,
          ),
        );
        break;
      case 'exit':
        break;
    }
  }

  void _showEditDialog(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Edit Item', style: TextStyle(color: Colors.teal)),
          content: TextField(
            controller: _textController,
            decoration: InputDecoration(
              hintText: 'Enter new item',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              filled: true,
              fillColor: Colors.teal[50],
              hintStyle: TextStyle(color: Colors.teal[300]),
            ),
          ),
          actions: [
            TextButton(
              child: Text('Cancel', style: TextStyle(color: Colors.teal)),
              onPressed: () => Navigator.of(context).pop(),
            ),
            TextButton(
              child: Text('Update', style: TextStyle(color: Colors.teal)),
              onPressed: () {
                setState(() {
                  _items[index] = _textController.text.trim();
                  _textController.clear();
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _showDeleteConfirmationDialog(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Confirm Deletion', style: TextStyle(color: Colors.teal)),
          content: Text('Are you sure you want to delete this item?',
              style: TextStyle(color: Colors.teal[800])),
          actions: [
            TextButton(
              child: Text('No', style: TextStyle(color: Colors.teal)),
              onPressed: () => Navigator.of(context).pop(),
            ),
            TextButton(
              child: Text('Yes', style: TextStyle(color: Colors.teal)),
              onPressed: () {
                setState(() {
                  _items.removeAt(index);
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Example'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _textController,
              decoration: InputDecoration(
                labelText: 'Enter name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                filled: true,
                fillColor: Colors.teal[50],
                labelStyle: TextStyle(color: Colors.teal),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: _addItem,
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.teal,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
            ),
            child: Text('Add Item'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _items.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onLongPress: () => _showContextMenu(context, index),
                  onTap: () => _showItemDialog(_items[index]),
                  child: ListTile(
                    tileColor: Colors.teal[100],
                    contentPadding: EdgeInsets.all(0),
                    title: Text(
                      _items[index],
                      style: TextStyle(color: Colors.teal[800]),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
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
