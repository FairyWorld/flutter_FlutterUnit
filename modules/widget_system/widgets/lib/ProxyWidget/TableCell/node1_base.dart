import 'package:flutter/material.dart';

/// create by 张风捷特烈 on 2020/9/21
/// contact me by email 1981462002@qq.com


class TableCellDemo extends StatelessWidget {
  const TableCellDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _ItemBean title = _ItemBean("单位称", "量纲", "单位", "单位名称", "单位符号");
    _ItemBean m = _ItemBean("长度", "L", "1m", "米", "m");
    _ItemBean kg = _ItemBean("质量", "M", "1Kg", "千克", "Kg");
    _ItemBean s = _ItemBean("时间", "T", "1s", "秒", "s");
    _ItemBean a = _ItemBean("安培", "Ι", "1A", "安培", "A");
    _ItemBean k = _ItemBean("热力学温度", "θ", "1K", "开尔文", "K");
    _ItemBean mol = _ItemBean("物质的量", "N", "1mol", "摩尔", "mol");
    _ItemBean cd = _ItemBean("发光强度", "J", "1cd", "坎德拉", "cd");

    List<_ItemBean> data = [title, m, kg, s, a, k, mol, cd];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Table(
        columnWidths: const <int, TableColumnWidth>{
          0: FixedColumnWidth(80.0),
          1: FixedColumnWidth(80.0),
          2: FixedColumnWidth(80.0),
          3: FixedColumnWidth(80.0),
          4: FixedColumnWidth(80.0),
        },
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        border: TableBorder.all(
            color: Colors.orangeAccent, width: 1.0, style: BorderStyle.solid),
        children: data
            .map((item) => TableRow(children: <Widget>[
                  TableCell(
                      verticalAlignment: TableCellVerticalAlignment.bottom,
                      child: Text(
                        item.name,
                        style: const TextStyle(color: Colors.blue),
                      )),
                  TableCell(
                      verticalAlignment: TableCellVerticalAlignment.baseline,
                      child: Text(item.symbol)),
                  TableCell(
                      verticalAlignment: TableCellVerticalAlignment.top,
                      child: Text(item.unitSymbol)),
                  TableCell(
                      verticalAlignment: TableCellVerticalAlignment.fill,
                      child: Text(item.unitName)),
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: SizedBox(height: 30, child: Text(item.unit)),
                  ),
                ]))
            .toList(),
      ),
    );
  }
}

class _ItemBean {
  String name;
  String symbol;
  String unit;
  String unitName;
  String unitSymbol;

  _ItemBean(this.name, this.symbol, this.unit, this.unitName, this.unitSymbol);
}
