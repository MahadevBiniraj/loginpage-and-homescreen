import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/screen_2/widgets/recent_events.dart';

void main() {}

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfffefffe),
        appBar: AppBar(
          title: Text(
            "Home",
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          actions: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://m.media-amazon.com/images/M/MV5BMTM1NjExNjg1OV5BMl5BanBnXkFtZTcwMTQ0NzIwMw@@._V1_FMjpg_UX1000_.jpg"),
            ),
            Icon(Icons.menu)
          ],
        ),

        //app bar section close
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Main Account",
                  style: TextStyle(
                      fontWeight: FontWeight.w800, color: Colors.deepPurple),
                ),
                Text("13.458 ",
                    style:
                        TextStyle(fontWeight: FontWeight.w800, fontSize: 30)),
                Text("current balance"),
                Row(
                  children: [
                    FloatingActionButton(
                      onPressed: () {},
                      child: Icon(Icons.add),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    FloatingActionButton(
                      onPressed: () {},
                      child: Icon(Icons.arrow_right_alt),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 50,
                      width: 230,
                      color: Color(0xfff0e5fd),
                      child: Center(
                          child: Text(
                        "Split a purchase",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w700),
                      )),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                RecentEvents(value: 0),
                RecentEvents(value: 1),
              ],
            ),
          ),
        ));
  }
}
