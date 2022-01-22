import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 70, left: 8, right: 8),
        child: Column(
          children: [
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  custom_icon(Icons.home),
                  custom_icon(Icons.grid_view_outlined),
                  custom_icon(Icons.monetization_on_outlined)
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.red,
              child: TextFormField(
                autofocus: false,
                textDirection: TextDirection.rtl,
                maxLines: 5,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedBorder:InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none
                ),
              ),
            ),

            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      custom_txt_button("AC", 25, FontWeight.w500),
                      custom_icon_button(Icons.backspace_rounded, 30),
                      custom_txt_button("%", 30, FontWeight.w500),
                      custom_txt_button("/", 30, FontWeight.w500)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      custom_txt2_button("7", 30, FontWeight.w700),
                      custom_txt2_button("8", 30, FontWeight.w700),
                      custom_txt2_button("9", 30, FontWeight.w700),
                      custom_txt_button("x", 30, FontWeight.w500)
                    ],
                  ),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      custom_txt2_button("4", 30, FontWeight.w700),
                      custom_txt2_button("5", 30, FontWeight.w700),
                      custom_txt2_button("6", 30, FontWeight.w700),
                      custom_txt_button("-", 30, FontWeight.w600)
                    ],
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      custom_txt2_button("1", 30, FontWeight.w700),
                      custom_txt2_button("2", 30, FontWeight.w700),
                      custom_txt2_button("3", 30, FontWeight.w700),
                      custom_txt_button("+", 30, FontWeight.w600)
                    ],
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      custom_txt2_button(".", 30, FontWeight.w700),
                      custom_txt2_button("0", 30, FontWeight.w700),
                      custom_txt2_button("=", 30, FontWeight.w700),
                       SizedBox(width: 10,),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget custom_icon(icn) {
  return IconButton(
      onPressed: () {},
      icon: Icon(
        icn,
        color: Color(0xff325288),
        size: 35,
      ));
}

Widget custom_txt_button(txt, double size, width) {
  return GestureDetector(
      child: Text(
    txt,
    style:
        TextStyle(fontSize: size, fontWeight: width, color: Color(0xff325288)),
  ));
}

Widget custom_icon_button(icn, double size) {
  return IconButton(
      onPressed: () {},
      icon: Icon(
        icn,
        color: Color(0xff325288),
        size: size,
      ));
}

Widget custom_txt2_button(txt, double size, width) {
  return GestureDetector(
      child: Text(
    txt,
    style:
        TextStyle(fontSize: size, fontWeight: width, color: Color(0xff24A19C)),
  ));
}
