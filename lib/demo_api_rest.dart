import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'monster.dart';

void main() => runApp(ApiRestApp());

class ApiRestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: FutureBuilder<Response>(
                future: get(Uri.parse("https://mhw-db.com/monsters/15")),
                builder: (context, snapshot) =>
                  switch(snapshot.connectionState){
                    ConnectionState.waiting => CircularProgressIndicator(),
                    ConnectionState.done when snapshot.data != null=>
                        Text(Monster.fromJson(
                            jsonDecode(snapshot.data!.body)
                            as Map<String,dynamic>
                        ).name),
                    _ => Icon(Icons.error)
                },
            ),
          ),
        ),
      ),
    );
  }
}