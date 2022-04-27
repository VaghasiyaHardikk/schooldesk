import 'package:flutter/material.dart';

class portfolios extends StatefulWidget {
  const portfolios({ Key? key }) : super(key: key);

  @override
  State<portfolios> createState() => _portfoliosState();
}

class _portfoliosState extends State<portfolios> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        elevation: 1,
        title: Padding(
          padding: const EdgeInsets.all(65.0),
          child: Text('PORTFOLIOS',

          ),
        ),
      ),
    );
  }
}