import 'package:flutter/material.dart';
import 'package:quote_list/quotes.dart';

class QuoteCard extends StatelessWidget {
  final Quotes quote;
  final VoidCallback share;
  final VoidCallback delete;

  const QuoteCard({
    super.key,
    required this.quote,
    required this.share,
    required this.delete,
  });


  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      elevation: 8,
      margin: const EdgeInsetsDirectional.all(20),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 30.0, 10.0, 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.quote,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.blueGrey[800],
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.bold),
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
                  fontWeight: FontWeight.w700),
            ),
            const Divider(
              height: 50.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: share,
                  child: const Icon(
                    Icons.share,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                FloatingActionButton(
                  onPressed: delete,
                  backgroundColor: Colors.red,
                  child: const Icon(
                    Icons.delete,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
