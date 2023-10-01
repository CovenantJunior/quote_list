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
  List<Quotes> quotes = [
    Quotes(
      id: 1,
      quote: "Success is not final, failure is not fatal: It is the courage to continue that counts.",
      author: "Winston Churchill",
    ),
    Quotes(
      id: 2,
      quote: "The only way to do great work is to love what you do.",
      author: "Steve Jobs",
    ),
    Quotes(
      id: 3,
      quote: "In the end, we will remember not the words of our enemies, but the silence of our friends.",
      author: "Martin Luther King Jr.",
    ),
    Quotes(
      id: 4,
      quote: "Life is really simple, but we insist on making it complicated.",
      author: "Confucius",
    ),
    Quotes(
      id: 5,
      quote: "The future belongs to those who believe in the beauty of their dreams.",
      author: "Eleanor Roosevelt",
    ),
    Quotes(
      id: 6,
      quote: "Imagination is more important than knowledge.",
      author: "Albert Einstein",
    ),
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
          return Text('${quote.quote}\nby\n${quote.author}\n');
        }).toList(),
      ),
    );
  }
}
