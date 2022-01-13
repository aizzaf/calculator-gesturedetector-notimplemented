import 'package:flutter/material.dart';
import 'package:izza3/constants/constants.dart';

class NumOp extends StatelessWidget {
  final String tombol;
  final double size;
  final double padtop;
  const NumOp(
      {Key? key, required this.tombol, this.size = 20, this.padtop = 10})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10, top: padtop),
      child: Center(
        child: Text(tombol, style: TextStyle(color: textColor, fontSize: size)),
      ),
      color: mainColor,
    );
  }
}
