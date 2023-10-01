import 'package:flutter/material.dart';
import 'quotes.dart';

void main() {
  runApp(const MaterialApp(home: QuoteList()));
}

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Map<String, dynamic>> quotes = [
    {
      "id": 1,
      "author": "Winston Churchill",
      "quote":
          "Success is not final, failure is not fatal: It is the courage to continue that counts."
    },
    {
      "id": 2,
      "author": "Steve Jobs",
      "quote": "The only way to do great work is to love what you do."
    },
    {
      "id": 3,
      "author": "Martin Luther King Jr.",
      "quote":
          "In the end, we will remember not the words of our enemies, but the silence of our friends."
    },
    {
      "id": 4,
      "author": "Confucius",
      "quote": "Life is really simple, but we insist on making it complicated."
    },
    {
      "id": 5,
      "author": "Eleanor Roosevelt",
      "quote":
          "The future belongs to those who believe in the beauty of their dreams."
    },
    {
      "id": 6,
      "author": "Albert Einstein",
      "quote": "Imagination is more important than knowledge."
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text('Quotes of Greatness'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[800],
      ),
      body: Column(
        children: quotes.map((quote) {
          return Text(quote['author']);
        }).toList(),
      ),
    );
  }
}
