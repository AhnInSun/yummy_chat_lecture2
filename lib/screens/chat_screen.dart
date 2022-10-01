import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);


  @override
  State<ChatScreen> createState() => _ChatScreenState();

}

class _ChatScreenState extends State<ChatScreen> {
  final _authentication = FirebaseAuth.instance;
  User? loggedUser;

  void initState() {
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() {
    final user = _authentication.currentUser;
    if(user != null) {
      try {
          loggedUser = user;
          print(loggedUser!.email);
      } catch(e) {
          print(e);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Char screen'),
        actions: [
          IconButton(
              onPressed: (){
                _authentication.signOut();
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.exit_to_app_sharp,
                color: Colors.white,
              ),
          )
        ],
      ),
      body: const Center(
        child: Text('Char screen'),
      ),
    );
  }
}
