import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}


class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int teamAPoints = 0;
  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar:AppBar(
          backgroundColor:Colors.orange,
          title:Text(
              'Points Counter'
          ),
        ),
        body:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:
          [
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                children:
                [
                  Column(
                    children:
                    [
                      Text('Team A',
                        style:TextStyle(
                          fontSize:30,
                        ),
                      ),
                      Text('$teamAPoints',
                        style:TextStyle(
                          fontSize:150,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: ()
                        {
                          setState(() {
                            teamAPoints++;
                          });
                          print(teamAPoints);
                        },
                        child: Text("Add 1 ponit",
                          style:TextStyle(
                            fontSize: 18,
                            color:Colors.black,
                          ),
                        ),
                        style:  ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(120, 40),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: ()
                        {
                          setState(() {
                            teamAPoints+=2;
                          });
                          print(teamAPoints);
                        },
                        child: Text("Add 2 ponit",
                          style:TextStyle(
                            fontSize: 18,
                            color:Colors.black,
                          ),
                        ),
                        style:  ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(120, 40),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: ()
                        {
                          setState(() {
                            teamAPoints+=3;
                          });
                          print(teamAPoints);
                        },
                        child: Text("Add 3 ponit",
                          style:TextStyle(
                            fontSize: 18,
                            color:Colors.black,
                          ),
                        ),
                        style:  ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(120, 40),
                        ),
                      ),
                    ],
                  ),
                  VerticalDivider(
                    thickness: 1,
                    color: Colors.grey[400],
                  ),
                  Column(
                    children:
                    [
                      Text('Team B',
                        style:TextStyle(
                          fontSize:30,
                        ),
                      ),
                      Text('$teamBPoints',
                        style:TextStyle(
                          fontSize:150,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: ()
                        {
                          setState(() {
                            teamBPoints++;
                          });
                          print(teamBPoints);
                        },
                        child: Text("Add 1 ponit",
                          style:TextStyle(
                            fontSize: 18,
                            color:Colors.black,
                          ),
                        ),
                        style:  ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(120, 40),

                        ),
                      ),
                      ElevatedButton(
                        onPressed: ()
                        {
                          setState(() {
                            teamBPoints+=2;
                          });
                          print(teamBPoints);
                        },
                        child: Text("Add 2 ponit",
                          style:TextStyle(
                            fontSize: 18,
                            color:Colors.black,
                          ),
                        ),
                        style:  ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(120, 40),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: ()
                        {
                          setState(() {
                            teamBPoints+=3;
                          });
                          print(teamBPoints);
                        },
                        child: Text("Add 3 ponit",
                          style:TextStyle(
                            fontSize: 18,
                            color:Colors.black,
                          ),
                        ),
                        style:  ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(120, 40),
                        ),
                      ),


                    ],
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: ()
              {
                setState(() {
                  teamAPoints=0;
                  teamBPoints=0;
                });
              },
              child: Text("Reset",
                style:TextStyle(
                  color:Colors.black,
                  fontSize: 20,
                ),
              ),
              style:  ElevatedButton.styleFrom(
                primary:Colors.orange,
                minimumSize:Size(130, 40),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


