import 'package:flutter/material.dart';
/// create by 张风捷特烈 on 2020/4/30
/// contact me by email 1981462002@qq.com

class CustomScaleTransition extends StatefulWidget {
  const CustomScaleTransition({Key? key}) : super(key: key);

  @override
  _CustomScaleTransitionState createState() => _CustomScaleTransitionState();
}

class _CustomScaleTransitionState extends State<CustomScaleTransition>
    with SingleTickerProviderStateMixin {
  late AnimationController _ctrl;

  @override
  void initState() {
    _ctrl = AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _ctrl.forward();
    super.initState();
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => _ctrl.forward(from: 0),
        child: Container(
          color: Colors.grey.withAlpha(22),
          width: 100,
          height: 100,
          child: ScaleTransition(
            scale: CurvedAnimation(parent: _ctrl, curve: Curves.linear),
            child: const Icon(Icons.android, color: Colors.green, size: 60),
          ),
        ));
  }
}
