import 'package:flutter/material.dart';

/// create by 张风捷特烈 on 2020-03-23
/// contact me by email 1981462002@qq.com

class DirectionalityDemo extends StatefulWidget {
  const DirectionalityDemo({Key? key}) : super(key: key);

  @override
  _DirectionalityDemoState createState() => _DirectionalityDemoState();
}

class _DirectionalityDemoState extends State<DirectionalityDemo> {
  TextDirection _textDirection = TextDirection.rtl;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: _textDirection,
      child: Container(
        padding: const EdgeInsets.all(8),
        width: 250,
        color: Colors.grey.withAlpha(33),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
                'A widget that determines the ambient directionality of text and text direction sensitive render objects.'),
            _buildSwitch(),
            const Text(
                'The text direction from the closest instance of this class that encloses the given context.'),
          ],
        ),
      ),
    );
  }

  Widget _buildSwitch() => Row(
            children: [
              Switch(
                value: _textDirection == TextDirection.rtl,
                onChanged: (v) {
                  setState(() {
                    _textDirection =
                        v ? TextDirection.rtl : TextDirection.ltr;
                  });
                },
              ),
              Text(
                _textDirection.toString(),
                style: const TextStyle(color: Colors.blue, fontSize: 18),
              )
            ],
          );
}
