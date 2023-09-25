import 'package:flutter/material.dart';

class AnimatedCrossFadeWidget extends StatefulWidget {
  const AnimatedCrossFadeWidget({super.key});

  @override
  State<AnimatedCrossFadeWidget> createState() =>
      _AnimatedCrossFadeWidgetState();
}

class _AnimatedCrossFadeWidgetState extends State<AnimatedCrossFadeWidget> {
  bool _crossFadeStateShowFirst = true;
  void _crossFade() {
    setState(() {
      _crossFadeStateShowFirst = _crossFadeStateShowFirst ? false : true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(alignment: Alignment.center, children: <Widget>[
          AnimatedCrossFade(
            firstChild: Container(
              color: Colors.amber,
              height: 100.0,
              width: 100.0,
            ),
            secondChild: Container(
              color: Colors.red,
              height: 200.0,
              width: 200.0,
            ),
            crossFadeState: _crossFadeStateShowFirst
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            duration: Duration(milliseconds: 500),
            sizeCurve: Curves.bounceOut,
          ),
          Positioned.fill(
            child: TextButton(
              child: Text('Tap to\nFade Color & Size'),
              onPressed: () {
                _crossFade();
              },
            ),
          ),
        ])
      ],
    );
  }
}
