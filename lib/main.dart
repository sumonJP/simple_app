import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel Home',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Travel App'),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        body: Builder(
            builder: (context) => Center(
                  child: Column(
                    children: [
                      Text(
                        'Hello World Travel',
                        style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[800]),
                      ),
                      Text(
                        'Discover the World',
                        style: TextStyle(
                            fontSize: 20, color: Colors.deepPurpleAccent),
                      ),
                      Image.network(
                        'https://media.istockphoto.com/id/955765580/photo/palm-tree-in-beach-in-tropical-island-caribbean-guadalupe.jpg?s=612x612&w=0&k=20&c=IAh5qJ5T6JZUUebYwtAjt_ySYFQZ7otp70up_9MIE_o=',
                        height: 350,
                      ),
                      ElevatedButton(
                        onPressed: () => contactUs(context),
                        child: Text('Contact Us'),
                      ),
                    ],
                  ),
                )),
      ),
    );
  }

  void contactUs(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Contact us'),
          content: Text('Mail Us at syful.islam3412@gmail.com'),
          actions: [
            TextButton(
              onPressed: () {
                // Your onPressed logic here
                return Navigator.of(context).pop();
              },
              child: Text('Close'),
            )
          ],
        );
      },
    );
  }
}
