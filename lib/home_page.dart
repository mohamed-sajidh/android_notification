import 'package:flutter/material.dart';
import 'package:flutter_local_notification_test/local_notifications.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("local notification")),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton.icon(
            onPressed: () {
              LocalNotifications.showSimpleNotification(
                title: "Simple Notification",
                body: "This is a sample notification",
                payload: "This is a simple data",
              );
            },
            label: const Text("simple notification"),
            icon: const Icon(Icons.notifications_outlined),
          ),

          ElevatedButton.icon(
            onPressed: () {
              LocalNotifications.showPeriodicNotifications(
                title: "Simple Notification",
                body: "This is a sample notification",
                payload: "This is a simple data",
              );
            },
            label: const Text("periodic notification"),
            icon: const Icon(Icons.timer_rounded),
          ),


        ],
      ),
    );
  }
}
