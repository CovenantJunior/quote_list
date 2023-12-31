import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:quote_list/quotes.dart';
import 'package:quote_list/quote_card.dart';
import 'package:share_plus/share_plus.dart';

void main() {
  runApp(const MaterialApp(home: QuoteList()));
}

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

Future<void> _refresh() async {
        
}
class _QuoteListState extends State<QuoteList> {
  List<Quotes> quotes = [
    Quotes(
      id: 1,
      quote:
          "Success is not final, failure is not fatal: It is the courage to continue that counts.",
      author: "Winston Churchill",
    ),
    Quotes(
      id: 2,
      quote: "The only way to do great work is to love what you do.",
      author: "Steve Jobs",
    ),
    Quotes(
      id: 3,
      quote:
          "In the end, we will remember not the words of our enemies, but the silence of our friends.",
      author: "Martin Luther King Jr.",
    ),
    Quotes(
      id: 4,
      quote: "Life is really simple, but we insist on making it complicated.",
      author: "Confucius",
    ),
    Quotes(
      id: 5,
      quote:
          "The future belongs to those who believe in the beauty of their dreams.",
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
      quote:
          "To be yourself in a world that is constantly trying to make you something else is the greatest accomplishment.",
      author: "Ralph Waldo Emerson",
    ),
    Quotes(
      id: 9,
      quote:
          "In three words I can sum up everything I've learned about life: it goes on.",
      author: "Robert Frost",
    ),
    Quotes(
      id: 10,
      quote: "Don't watch the clock; do what it does. Keep going.",
      author: "Sam Levenson",
    ),
    Quotes(
      id: 11,
      quote:
          "Success is not the key to happiness. Happiness is the key to success. If you love what you are doing, you will be successful.",
      author: "Albert Schweitzer",
    ),
    Quotes(
      id: 12,
      quote:
          "The only way to achieve the impossible is to believe it is possible.",
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
      quote:
          "The greatest glory in living lies not in never falling, but in rising every time we fall.",
      author: "Nelson Mandela",
    ),
  ];

  /* Widget quoteTemplate(quote) {
    return QuoteCard(quote: quote);
  } */

  late final Function share;
  // late final VoidCallback delete;
  late final VoidCallback clipboard;

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
            fontSize: 20),
        backgroundColor: Colors.blue,
      ),
      /* body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: quotes.map((quote) {
            return Text(
              '${quote.quote}\n- ${quot.author}\n\n\n',
              style: const TextStyle(
                color: Colors.white,
              ),
            );
          }).toList(),
        ),
      ), */

      body: LiquidPullToRefresh(
        onRefresh: _refresh,
        child: SingleChildScrollView(
          child: Column(
            children: quotes
                .map((quote) => QuoteCard(
                    quote: quote,
                    share: () {
                      Share.share('${quote.quote} - ${quote.author}');
                    },
                    clipboard: () {
                      Clipboard.setData(ClipboardData(
                          text: '${quote.quote} - ${quote.author}'));
                    }
                    /* delete: () {
                      setState(() {
                        quotes.remove(quote);
                      });
                    } */
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
