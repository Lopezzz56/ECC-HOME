import 'package:eccapp/pages/profile_bg.dart';
import 'package:flutter/material.dart';
import 'package:profile/profile.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({Key? key}) : super(key: key);

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
           children: <Widget>[
            ProfileBackground(screenHeight: MediaQuery.of(context).size.height),
          
           SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                    child: Profile(
                      imageUrl:
                          "https://images.unsplash.com/photo-1598618356794-eb1720430eb4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
                      name: "Frank Lopes",
                      website: "stxaviers.com",
                      designation: "Student | St Xaviers College",
                      email: "Email : lopezzz@gmail.com",
                      phone_number: "Phone Number: 9635056995",
                      
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Icon(Icons.music_note),
                      ),
                      title: Text('Fitoor'),
                      // subtitle: Text('Subtitle for ListTile 2'),
                      trailing: Icon(Icons.arrow_forward),
                      onTap: () {
                        // Handle onTap event for ListTile 2
                      },
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Icon(Icons.calculate),
                      ),
                      title: Text('Mathemmatika'),
                      // subtitle: Text('Subtitle for ListTile 2'),
                      trailing: Icon(Icons.arrow_forward),
                      onTap: () {
                        // Handle onTap event for ListTile 2
                      },
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Icon(Icons.event),
                      ),
                      title: Text('Malhaar Masterclass'),
                      // subtitle: Text('Subtitle for ListTile 2'),
                      trailing: Icon(Icons.arrow_forward),
                      onTap: () {
                        // Handle onTap event for ListTile 2
                      },
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Icon(Icons.music_video),
                      ),
                      title: Text('The Social Hour'),
                      // subtitle: Text('Subtitle for ListTile 2'),
                      trailing: Icon(Icons.arrow_forward),
                      onTap: () {
                        // Handle onTap event for ListTile 2
                      },
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: const CircleAvatar(
                        child: Icon(Icons.favorite),
                      ),
                      title: const Text('FolkDance'),
                      // subtitle: Text('Subtitle for ListTile 2'),
                      trailing: const Icon(Icons.arrow_forward),
                      onTap: () {
                        // Handle onTap event for ListTile 2
                      },
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: const CircleAvatar(
                        child: Icon(Icons.headset_mic),
                      ),
                      title: const Text('Concert'),
                      // subtitle: Text('Subtitle for ListTile 2'),
                      trailing: const Icon(Icons.arrow_forward),
                      onTap: () {
                        // Handle onTap event for ListTile 2
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
           ]
        ),
      ),
//           ListView(
//   children: <Widget>[
//     ListTile(
//       leading: Icon(Icons.book),
//       title: Text('The Great Gatsby'),
//       subtitle: Text('F. Scott Fitzgerald'),
//       trailing: Icon(Icons.arrow_forward),
//       onTap: () {
//         // action to perform when item is tapped
//       },
//     ),
//     ListTile(
//       leading: Icon(Icons.movie),
//       title: Text('The Shawshank Redemption'),
//       subtitle: Text('Frank Darabont'),
//       trailing: Icon(Icons.arrow_forward),
//       onTap: () {
//         // action to perform when item is tapped
//       },
//     ),
//     ListTile(
//       leading: Icon(Icons.music_note),
//       title: Text('Abbey Road'),
//       subtitle: Text('The Beatles'),
//       trailing: Icon(Icons.arrow_forward),
//       onTap: () {
//         // action to perform when item is tapped
//       },
//     ),
//     ListTile(
//       leading: Icon(Icons.location_on),
//       title: Text('New York City'),
//       subtitle: Text('United States'),
//       trailing: Icon(Icons.arrow_forward),
//       onTap: () {
//         // action to perform when item is tapped
//       },
//     ),
//     ListTile(
//       leading: Icon(Icons.restaurant),
//       title: Text('Pizza'),
//       subtitle: Text('Italian'),
//       trailing: Icon(Icons.arrow_forward),
//       onTap: () {
//         // action to perform when item is tapped
//       },
//     ),
//   ],
// )
    );
  }
}
