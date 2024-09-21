import 'package:flutter/material.dart';

/// create by 张风捷特烈 on 2020-04-12
/// contact me by email 1981462002@qq.com

class LinearShaderMask extends StatelessWidget {
  const LinearShaderMask({Key? key}) : super(key: key);

  final List<Color> colors = const [Colors.red, Colors.yellow, Colors.blue];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: <Widget>[
        ShaderMask(
          shaderCallback: _buildShader,
          child: Image.asset(
            'assets/images/icon_head.webp',
            height: 70,
            width: 70,
          ),
        ),
        ShaderMask(
          shaderCallback: _buildShader,
          child: const Text(
            '张风捷特烈',
            style: TextStyle(fontSize: 40, color: Colors.white),
          ),
        ),
        ShaderMask(
          shaderCallback: _buildShader,
          child: Container(
            height: 100,
            color: Colors.white,
            width: 50,
          ),
        ),
      ],
    );
  }

  Shader _buildShader(Rect bounds) => LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      tileMode: TileMode.mirror,
      colors: colors)
      .createShader(bounds);
}
