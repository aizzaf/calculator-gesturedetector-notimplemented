import 'package:flutter/material.dart';
import 'package:izza3/constants/constants.dart';
import 'package:izza3/widgets/number_operator.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Column(children: [
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "DEG",
                style: TextStyle(
                  color: textColor,
                  fontSize: 19,
                ),
              ),
            ),
            IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.more_vert,
                  color: textColor,
                  size: 23,
                )),
          ],
        ),
        SizedBox(height: 30),
        Container(
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            reverse: true,
            child: Padding(
              padding: EdgeInsets.only(right: 37),
              child: Text(
                "0",
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 50,
                  color: textColor,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Container(
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            reverse: true,
            child: Padding(
              padding: EdgeInsets.only(right: 40),
              child: Text(
                "0",
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 30,
                  color: textColor,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        Expanded(
          child: Row(children: [
            Container(
              width: MediaQuery.of(context).size.width * .75,
              child: Table(
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  children: [
                    TableRow(children: [
                      NumOp(tombol: "7"),
                      NumOp(tombol: "8"),
                      NumOp(tombol: "9"),
                    ]),
                    TableRow(children: [
                      NumOp(tombol: "4"),
                      NumOp(tombol: "5"),
                      NumOp(tombol: "6"),
                    ]),
                    TableRow(children: [
                      NumOp(tombol: "1"),
                      NumOp(tombol: "2"),
                      NumOp(tombol: "3"),
                    ]),
                    TableRow(children: [
                      NumOp(tombol: "0"),
                      NumOp(tombol: "•"),
                      NumOp(tombol: "="),
                    ])
                  ]),
            ),
            Container(
                width: MediaQuery.of(context).size.width * .22,
                child: Table(
                    border: TableBorder(
                        left: BorderSide(color: textColor, width: 0.1)),
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: [
                      TableRow(children: [NumOp(tombol: "DEL", size: 10)]),
                      TableRow(children: [NumOp(tombol: "÷", size: 12)]),
                      TableRow(children: [NumOp(tombol: "×", size: 12)]),
                      TableRow(children: [NumOp(tombol: "-", size: 12)]),
                      TableRow(children: [NumOp(tombol: "+", size: 12)])
                    ])),
            Container(
              child: IconButton(
                onPressed: () => showModalBottomSheet(
                    context: context,
                    builder: (context) =>
                        Positioned.fill(right: 0, child: ModalBarrier())),
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: textColor,
                  size: MediaQuery.of(context).size.width * .02,
                ),
              ),
              width: MediaQuery.of(context).size.width * .03,
              height: MediaQuery.of(context).size.height * .4,
              color: accentColor,
            )
          ]),
        ),
      ]),
    );
  }
}
