import 'package:flutter/cupertino.dart';

class reusableCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  Function function;

  reusableCard({@required this.colour, this.cardChild,this.function});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function ,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}