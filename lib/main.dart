import 'package:flutter/material.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
        title: Text('Quize'),
      ),
        backgroundColor: Colors.cyan,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}class _QuizPageState extends State<QuizPage> {
  List<Icon> scorekeeper=[

      Icon(Icons.check,
        color: Colors.green,

      ),
      Icon(Icons.close,
        color: Colors.red,
      ),

      Icon(Icons.close,
        color: Colors.red,
      ),

      Icon(Icons.close,
        color: Colors.red,
      ),
    ];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                'This is where the question text will go.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.white, // Set button background color
              ),
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.black, // Set text color
                  fontSize: 20.0,
                ),
              ),
              onPressed: (

                  ) {
                setState(() {
                  scorekeeper.add(
                    Icon(
                      Icons.check,
                      color: Colors.green,
                    ),
                  );
                });
              }
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.white, // Set button background color
              ),
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black, // Set text color
                ),
              ),
              onPressed: (

                  ) {
                setState(() {
                  scorekeeper.add(
                    Icon(
                      Icons.close,
                      color: Colors.red,
                    ),
                  );
                });
                // The user picked false.
              },
            ),
          ),
        ),
        Row(
          children:scorekeeper,
        ),
      ],
    );
  }
}
