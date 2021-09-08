import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class gamepage extends StatefulWidget {
  const gamepage({Key? key}) : super(key: key);

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<gamepage> {
  String word = "";
  int i = 0;

  font(int a) {
    if (a == 1) {
      setState(() {
        i = 1;
      });
    } else if (a == 2) {
      setState(() {
        i = 2;
      });
    } else if (a == 3) {
      setState(() {
        i = 3;
      });
    } else if (a == 4) {
      setState(() {
        i = 4;
      });
    } else if (a == 5) {
      setState(() {
        i = 5;
      });
    }
  }

  changefont(word) {
    if (i == 1) {
      return Text(
        word,
        style: GoogleFonts.kanit(fontSize: 50.0),
      );
    } else if (i == 2) {
      return Text(
        word,
        style: GoogleFonts.sriracha(fontSize: 50.0),
      );
    } else if (i == 3) {
      return Text(
        word,
        style: GoogleFonts.k2d(fontSize: 50.0),
      );
    } else if (i == 4) {
      return Text(
        word,
        style: GoogleFonts.itim(fontSize: 50.0),
      );
    } else if (i == 5) {
      return Text(
        word,
        style: GoogleFonts.pattaya(fontSize: 50.0),
      );
    } else {
      return Text(
        word,
        style: GoogleFonts.kanit(fontSize: 50.0),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: AppBar(
        title: Text("THAI FONT VIEWER"),
        backgroundColor: Colors.teal,
      ),
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Center(
                    child: changefont(word),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      child: i == 1
                          ? Text("Font: Kanit")
                          : i == 2
                              ? Text("Font: Sriracha")
                              : i == 3
                                  ? Text("Font: K2D")
                                  : i == 4
                                      ? Text("Font: Itim")
                                      : i == 5
                                          ? Text("Font: Pattaya")
                                          : Text("Font: Kanit"),
                    ),
                    Card(
                      elevation: 5.0,
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              onPressed: () => font(1),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.teal,
                              ),
                              child: Text(
                                'Kanit',
                                style: TextStyle(fontSize: 20.0),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              onPressed: () => font(2),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.teal,
                              ),
                              child: Text(
                                'Sriracha',
                                style: TextStyle(fontSize: 20.0),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              onPressed: () => font(3),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.teal,
                              ),
                              child: Text(
                                'K2D',
                                style: TextStyle(fontSize: 20.0),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              onPressed: () => font(4),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.teal,
                              ),
                              child: Text(
                                'Itim',
                                style: TextStyle(fontSize: 20.0),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              onPressed: () => font(5),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.teal,
                              ),
                              child: Text(
                                'Pattaya',
                                style: TextStyle(fontSize: 20.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
