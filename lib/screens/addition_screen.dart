import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';

class AdditionScreen extends StatefulWidget {
  @override
  _AdditionGameState createState() => _AdditionGameState();
}

class _AdditionGameState extends State<AdditionScreen> {
  late int num1;
  late int num2;
  late int score;
  late int answer = 0;
  bool isCorrect = false;
  String message = '';

  Timer? _timer;

  @override
  void initState() {
    super.initState();
    generateNumbers();
    score = 0;
    answer = 0;
  }

  @override
  void dispose() {
    _timer?.cancel(); // Cancel the timer when the screen is disposed
    super.dispose();
  }

  void generateNumbers() {
    Random random = Random();
    do {
      num1 = random.nextInt(5) + 1;
      num2 = random.nextInt(5) + 1;
    } while (answer == num1 + num2); // Keep generating new numbers until a new question is formed
  }

  void checkAnswer(int selectedAnswer) {
    setState(() {
      answer = selectedAnswer;
      if (answer == num1 + num2) {
        score++;
        isCorrect = true;
        message = 'Correct!';
      } else {
        score--;
        isCorrect = false;
        message = 'Incorrect!';
      }

      // Start the timer for message reset and next question
      startTimer();
    });
  }

  void startTimer() {
    const duration = Duration(seconds: 1); // Adjust the duration as needed
    _timer?.cancel(); // Cancel previous timer if any
    _timer = Timer(duration, () {
      setState(() {
        isCorrect = false;
        message = '';
        generateNumbers();
        answer = 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    List<int> options = generateOptions();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          iconTheme: IconThemeData(color: Colors.blue),
          centerTitle: true,
          title: Text('Addition Game', style: TextStyle(color: Colors.blue)),
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        body: Column(
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Color(0xFFff6374),
                    border: Border.all(color: Colors.black38),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text(
                    '$num1 + $num2 = ?',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Flexible(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 2.5,
                padding: EdgeInsets.all(10.0),
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                children: options.map((option) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: MaterialButton(
                      onPressed: () => checkAnswer(option),
                      child: Text('$option'),
                      color: Color(0xFFff6374),
                      textColor: Colors.white,
                    ),
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 10),
            Text(
              message,
              style: TextStyle(
                fontSize: 18,
                color: isCorrect ? Colors.green : Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<int> generateOptions() {
    List<int> options = [];
    Random random = Random();

    // Generate three random options
    while (options.length < 3) {
      int option = random.nextInt(10) + 1;
      if (option != (num1 + num2) && !options.contains(option)) {
        options.add(option);
      }
    }

    // Add the correct answer as one of the options
    options.add(num1 + num2);

    // Shuffle the options randomly
    options.shuffle();

    return options;
  }
}
