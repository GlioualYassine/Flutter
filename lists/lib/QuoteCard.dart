import 'package:flutter/material.dart';
import 'Quote.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  final Function delete ;
  QuoteCard({required this.quote,required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16,0),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[600]
              ),
            ),
            SizedBox(height: 6.0,),
            Text(
              quote.author,
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[800]
              ),
            ),
            SizedBox(
              height: 8,
            ),
            ElevatedButton(
                onPressed: ()=>delete(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.delete),
                    Text("delete quote")
                  ],

                )
            )
          ],
        ),
      ),
    );
  }
}

