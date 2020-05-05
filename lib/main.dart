import 'package:flutter/material.dart';
import './domain/workout.dart';

void main() => runApp(WorkoutTracker());

class WorkoutTracker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Workout Tracker',
        theme: ThemeData(
            primaryColor: Color.fromRGBO(255, 128, 128, 1),
            textTheme: TextTheme(title: TextStyle(color: Colors.white))),
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text('Workout Tracker'),
        leading: Icon(Icons.fitness_center),
      ),
      body: WorkoutList(),
    ));
  }
}

class WorkoutList extends StatelessWidget {
  final workouts = <Workout>[
    Workout(
        title: 'Test1',
        author: 'Anya',
        description: 'description',
        level: 'Advanced'),
    Workout(
        title: 'Test2',
        author: 'Anya1',
        description: 'description',
        level: 'Advancd'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
            child: ListView.builder(
                itemCount: workouts.length,
                itemBuilder: (context, i) {
                  return Card(
                    elevation: 2.0,
                    margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 102, 102, 1)),
                        child: ListTile(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10),
                            title: Text(
                              workouts[i].title,
                              style: TextStyle(
                                  color:
                                      Theme.of(context).textTheme.title.color,
                                  fontWeight: FontWeight.bold),
                            ))),
                  );
                })));
  }
}
