import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key key}) : super(key: key);

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('avatars')),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.forward_to_inbox),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }
}
