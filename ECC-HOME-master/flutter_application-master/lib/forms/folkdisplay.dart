import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MyFolkScreen extends StatelessWidget {
  final List<DocumentSnapshot> documents;

  MyFolkScreen({required this.documents});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Other Applicants'),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                 
                  Color.fromARGB(255, 51, 63, 225),
                  Color.fromARGB(255, 86, 221, 210),
                ],
                begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                //colors: <Color>[Color.fromARGB(255, 161, 22, 186), Colors.blue])),
      ),
          ),
    ),
      ),
      body: ListView.builder(
        itemCount: documents.length,
        itemBuilder: (context, index) {
          Map<String, dynamic> data = documents[index].data() as Map<String, dynamic>;
          return Card(child:  
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text(data['fname'] + ' ' + data['lname']),
            subtitle: Text(data['email']),
            trailing: Text(data['course']),
          ),
          );
        },
      ),
    );
  }
}