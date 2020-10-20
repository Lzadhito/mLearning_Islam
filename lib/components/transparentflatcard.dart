import 'package:flutter/material.dart';

class TransparentFlatCard extends StatelessWidget {
  const TransparentFlatCard({
    Key key,
    @required this.child,
    this.color = const Color(0X21FF8563),
  }) : super(key: key);

  final Widget child;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      color: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.only(
            top: 15.0, bottom: 15.0, left: 20.0, right: 20.0),
        child: child,
      ),
    );
  }
}
