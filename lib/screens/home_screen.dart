import 'dart:developer';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:oxdo_cloud_message/main.dart';
import 'package:rxdart/rxdart.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _messageController = BehaviorSubject<RemoteMessage>();

  @override
  void initState() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      log('Handling a foreground message: ${message.messageId}');
      log('Message data: ${message.data}');
      log('Message notification: ${message.notification?.title} ${DateTime.now().hour}:${DateTime.now().minute}');
      log('Message notification: ${message.notification?.body}  ${DateTime.now().hour}:${DateTime.now().minute}');
      _showNotification(
          title: message.notification?.title ?? "No title",
          body: message.notification?.body ?? "No body");

      _messageController.sink.add(message);
    });
    super.initState();
  }

  Future<void> _showNotification({
    required String title,
    required String body,
  }) async {
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
      'your_channel_id',
      'your_channel_name',
      importance: Importance.max,
      priority: Priority.high,
      showWhen: false,
    );

    const NotificationDetails platformChannelSpecifics =
        NotificationDetails(android: androidPlatformChannelSpecifics);

    await flutterLocalNotificationsPlugin.show(
      0, // notification id.
      title,
      body,
      platformChannelSpecifics,
      payload: 'Notification Payload',
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen FCM"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  _showNotification(title: "Sample title", body: "Sample local notification");
                },
                child: const Text("Send Local Notification"))
          ],
        ),
      ),
    );
  }
}
