import 'package:flutter/material.dart';
import 'package:project21/ComposeEmailScreen.dart';
import 'package:project21/EmailDetailScreen.dart';
import 'package:project21/iconpagescrren.dart';
import 'icon_page_screen.dart'; // Import the new screen

class InboxScreen extends StatelessWidget {
  final List<Map<String, String>> emails = [
    {
      'sender': 'John Doe',
      'subject': 'Meeting Reminder',
      'snippet': 'Don\'t forget about the meeting tomorrow.'
    },
    {
      'sender': 'Jane Smith',
      'subject': 'Project Update',
      'snippet': 'The project is on track for completion.'
    },
    // Add more dummy data here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inbox'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: emails.length,
        itemBuilder: (context, index) {
          final email = emails[index];
          return ListTile(
            leading: Icon(Icons.mail),
            title: Text(email['subject']!),
            subtitle: Text(email['snippet']!),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EmailDetailScreen(email: email),
                ),
              );
            },
            onLongPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => IconPageScreen(),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ComposeEmailScreen(),
            ),
          );
        },
      ),
    );
  }
}
