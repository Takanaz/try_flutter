// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
          useMaterial3: true,
        ),
        home: Scaffold(
            appBar: AppBar(
                backgroundColor: Colors.lightBlue,
                title: const Text('Twitterlike UI',
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
            body: const SingleChildScrollView(
              child: Column(
                children: [
                  TweetTile(),
                  TweetTile(),
                  TweetTile(),
                  TweetTile(),
                  TweetTile(),
                ],
              ),
            )));
  }
}

class TweetTile extends StatelessWidget {
  const TweetTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 24,
            backgroundImage: NetworkImage(
                'https://pbs.twimg.com/profile_images/1447446623949882370/3zv3zv9d_400x400.jpg'),
          ),
          SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(children: [
                Text('Twitter user'),
                SizedBox(
                  width: 8,
                ),
                Text('2024/02/26')
              ]),
              SizedBox(height: 4),
              Text('This is a tweet'),
              IconButton(
                onPressed: () {
                  print('Like button pressed');
                },
                icon: const Icon(Icons.favorite_border),
              )
            ],
          ),
        ],
      ),
    );
  }
}
