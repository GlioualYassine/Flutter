import 'package:flutter/material.dart';
import 'Quote.dart';
import 'QuoteCard.dart';
void main() {
  runApp(MaterialApp(
    home : QuoteList()
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote>quotes = [
    Quote(author: "Osca wilde",text: 'Be1 yourself; everyone else is already taken'),
    Quote(author: "Osca wilde",text: 'I have nothing to declare except my genius' ),
    Quote(author: "Osca wilde",text: 'The truth is rarely pure and never simple' ),

  ];





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome Quotes"),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Column(
        children: quotes.map((quote)=>QuoteCard(
            quote : quote,
            delete : (){
              setState(() {
                quotes.remove(quote);
              });
            }
        )).toList(),
      ),
    );
  }
}



