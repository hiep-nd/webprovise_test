import 'package:flutter/material.dart';

class TakeHomeApp extends StatelessWidget {
  final WidgetBuilder? homeBuilder;

  const TakeHomeApp({
    super.key,
    this.homeBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Take Home App',
      home: homeBuilder?.call(context),
    );
  }
}
