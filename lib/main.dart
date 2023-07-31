import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Directionality(
        textDirection: TextDirection.ltr,
        child: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  height: 340.0,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        height: 180.0,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/cover.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 4.0,
                                      ),
                                    ),
                                    child: const CircleAvatar(
                                      backgroundImage: AssetImage('assets/profile.jpg'),
                                      radius: 60.0,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 16.0),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 20.0, right: 10),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFFFAD5A5),
                                        borderRadius: BorderRadius.circular(12.0),
                                      ),
                                      padding: const EdgeInsets.all(8.0),
                                      child: const Text(
                                        "Members Only",
                                        style: TextStyle(
                                          color: const Color(0xFFC41E3A),
                                          fontSize: 13.0,
                                          decoration: TextDecoration.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 0.1),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  const Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "Goa Sunburn",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          decoration: TextDecoration.none,
                                        ),
                                      ),
                                      SizedBox(height: 8.0),
                                      Text(
                                        "Monday, 04 July 2023 at 5:30pm",
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                          decoration: TextDecoration.none,
                                          letterSpacing: -2,
                                        ),
                                      ),
                                    ],
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      print("Join button pressed!");
                                    },
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                      fixedSize: MaterialStateProperty.all<Size>(const Size(100.0, 40.0)),
                                    ),
                                    child: const Text("Join"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Container(
                                margin: const EdgeInsets.only(top: 8.0),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFFAD5A5),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                padding: const EdgeInsets.all(8.0),
                                child: const Text(
                                  "Adventure",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10.0,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16.0),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const SizedBox(width: 16.0),
                      ElevatedButton(
                        onPressed: () {
                          // Add your action for "Info" button here
                          print("Info button pressed!");
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          fixedSize: const Size(100.0, 40.0),
                        ),
                        child: const Text("Info"),
                      ),
                      const SizedBox(width: 16.0),
                      ElevatedButton(
                        onPressed: () {
                          // Add your action for "Activity" button here
                          print("Activity button pressed!");
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          fixedSize: const Size(100.0, 40.0),

                        ),
                        child: const Text("Activity"),
                      ),
                      const SizedBox(width: 16.0),
                      ElevatedButton(
                        onPressed: () {
                          // Add your action for "Attendees" button here
                          print("Attendees button pressed!");
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          fixedSize: const Size(100.0, 40.0),
                        ),
                        child: const Text("Attendees"),
                      ),
                      const SizedBox(width: 16.0),
                      ElevatedButton(
                        onPressed: () {
                          // Add your action for "Members" button here
                          print("Members button pressed!");
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          fixedSize: const Size(100.0, 40.0),
                        ),
                        child: const Text("Members"),
                      ),
                      const SizedBox(width: 16.0),
                      ElevatedButton(
                        onPressed: () {
                          // Add your action for "Other" button here
                          print("Other button pressed!");
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          fixedSize: const Size(100.0, 40.0),
                        ),
                        child: const Text("Other"),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16.0),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "Take in the best views of Kuala Lumpur with your guide on hand to take the photos during this.",
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.grey,
                      decoration: TextDecoration.none
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/profile.jpg'),
                        radius: 15.0,
                      ),
                      SizedBox(width: 8.0),
                      Text(
                        "Organized by ",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      Text(
                        "Ravi Kumar",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 16.0),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/profile.jpg'),
                        radius: 15.0,
                      ),
                      SizedBox(width: 8.0),
                      Text(
                        "Created by ",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      Text(
                        "Shawn Michael",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5.0),
                 const Divider(
                  height: 10,
                  thickness: 1,
                  indent: 10,
                  endIndent: 10,
                  color: Colors.grey,
                ),
                SizedBox(height: 5.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "About the venue",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          // Add your action for "Get Direction" button here
                          print("Get Direction button pressed!");
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                          fixedSize: MaterialStateProperty.all<Size>(const Size(120.0, 40.0)),
                        ),
                        child: const Text("Get Direction"),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Text(
                      "Anjuna Beach, North Goa",
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.black,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Image.asset(
                    'assets/map.jpg',
                    height: 100.0,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Event URL",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        Text(
                          "www.eventurl.com",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ticket URL",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        Text(
                          "www.eventurl.com",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
