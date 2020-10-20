import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Background extends StatelessWidget {
  const Background({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image:
                    AssetImage('assets/images/animated_desert_w_gradient.png'),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment(-1.0, -1.0),
                fit: BoxFit.fitWidth,
                image: AssetImage('assets/images/animated_desert_night.png'),
              ),
            ),
          ),
        ),

        // Image.asset('assets/images/animated_desert_w_gradient.png'),
        // Image.asset('assets/images/animated_desert_night.png'),
      ],
    );
  }
}
