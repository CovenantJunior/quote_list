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
    Quotes(
      id: 7,
      quote: "The only thing we have to fear is fear itself.",
      author: "Franklin D. Roosevelt",
    ),
    Quotes(
      id: 8,
      quote: "To be yourself in a world that is constantly trying to make you something else is the greatest accomplishment.",
      author: "Ralph Waldo Emerson",
    ),
    Quotes(
      id: 9,
      quote: "In three words I can sum up everything I've learned about life: it goes on.",
      author: "Robert Frost",
    ),
    Quotes(
      id: 10,
      quote: "Don't watch the clock; do what it does. Keep going.",
      author: "Sam Levenson",
    ),
    Quotes(
      id: 11,
      quote: "Success is not the key to happiness. Happiness is the key to success. If you love what you are doing, you will be successful.",
      author: "Albert Schweitzer",
    ),
    Quotes(
      id: 12,
      quote: "The only way to achieve the impossible is to believe it is possible.",
      author: "Charles Kingsleigh (from Alice in Wonderland)",
    ),
    Quotes(
      id: 13,
      quote: "Your time is limited, don't waste it living someone else's life.",
      author: "Steve Jobs",
    ),
    Quotes(
      id: 14,
      quote: "Life is 10% what happens to us and 90% how we react to it.",
      author: "Charles R. Swindoll",
    ),
    Quotes(
      id: 15,
      quote: "The greatest glory in living lies not in never falling, but in rising every time we fall.",
      author: "Nelson Mandela",
    ),

  ];

  Widget quoteCard(quote) {
    return Card(
      elevation: 10,
      margin: const EdgeInsetsDirectional.all(20),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20.0,30.0, 10.0, 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.quote,
              style: TextStyle(
                fontSize: 20, 
                color: Colors.blueGrey[800],
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 15, 
                color: Colors.blueGrey[600],
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w700
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        title: const Text('Quotes of Greatness'),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontFamily: 'Quicksand',
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          fontSize: 20
        ),
        backgroundColor: Colors.blueGrey[800],
      ),
      /* body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: quotes.map((quote) {
            return Text(
              '${quote.quote}\n- ${quote.author}\n\n\n',
              style: const TextStyle(
                color: Colors.white,
              ),
            );
          }).toList(),
        ),
      ), */
      body: SingleChildScrollView(
        child: Column(
          children: quotes.map((quote) => quoteCard(quote)).toList(),
        ),
      ),
    );
  }
}
