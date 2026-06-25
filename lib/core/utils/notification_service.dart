// import 'dart:async';
//
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
//
// import 'methods_manager.dart';
//
// @pragma('vm:entry-point')
// Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   await NotificationService.instance.setupFlutterNotifications();
//   await NotificationService.instance.showNotification(message);
// }
//
// class NotificationService {
//   NotificationService._();
//
//   static final NotificationService instance = NotificationService._();
//
//   final _messaging = FirebaseMessaging.instance;
//   final _localNotifications = FlutterLocalNotificationsPlugin();
//   bool _isFlutterLocalNotificationsInitialized = false;
//
//   Future<void> initialize() async {
//     FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
//
//     await _requestPermission();
//
//     await _setupMessageHandlers();
//
//     final token = await _messaging.getToken();
//     if (token != null) {
//       await MethodsManager.storeFCMToken(token);
//     }
//   }
//
//   Future<void> _requestPermission() async {
//     final settings = await _messaging.requestPermission(
//       alert: true,
//       badge: true,
//       sound: true,
//     );
//     debugPrint('Notification permission: ${settings.authorizationStatus}');
//   }
//
//   Future<void> setupFlutterNotifications() async {
//     if (_isFlutterLocalNotificationsInitialized) return;
//
//     const channel = AndroidNotificationChannel(
//       'high_importance_channel',
//       'High Importance Notifications',
//       description: 'This channel is used for important notifications.',
//       importance: Importance.high,
//     );
//
//     await _localNotifications
//         .resolvePlatformSpecificImplementation<
//           AndroidFlutterLocalNotificationsPlugin
//         >()
//         ?.createNotificationChannel(channel);
//
//     const initializationSettingsAndroid = AndroidInitializationSettings(
//       '@mipmap/ic_launcher',
//     );
//     final initializationSettingsDarwin = const DarwinInitializationSettings();
//
//     final initializationSettings = InitializationSettings(
//       android: initializationSettingsAndroid,
//       iOS: initializationSettingsDarwin,
//     );
//
//     await _localNotifications.initialize(
//       settings: initializationSettings,
//       onDidReceiveNotificationResponse: (details) {
//         debugPrint('Notification tapped: ${details.payload}');
//       },
//     );
//
//     _isFlutterLocalNotificationsInitialized = true;
//   }
//
//   Future<void> showNotification(RemoteMessage message) async {
//     final notification = message.notification;
//     final android = message.notification?.android;
//
//     if (notification != null && android != null) {
//       await _localNotifications.show(
//         id: notification.hashCode,
//         title: notification.title,
//         body: notification.body,
//         notificationDetails: const NotificationDetails(
//           android: AndroidNotificationDetails(
//             'high_importance_channel',
//             'High Importance Notifications',
//             channelDescription:
//                 'This channel is used for important notifications.',
//             importance: Importance.high,
//             priority: Priority.high,
//             icon: '@mipmap/ic_launcher',
//           ),
//           iOS: DarwinNotificationDetails(
//             presentAlert: true,
//             presentBadge: true,
//             presentSound: true,
//           ),
//         ),
//         payload: message.data.isNotEmpty ? message.data.toString() : null,
//       );
//     }
//   }
//
//   Future<void> _setupMessageHandlers() async {
//     FirebaseMessaging.onMessage.listen(showNotification);
//
//     FirebaseMessaging.onMessageOpenedApp.listen(_handleBackgroundMessage);
//
//     final initialMessage = await _messaging.getInitialMessage();
//     if (initialMessage != null) {
//       _handleBackgroundMessage(initialMessage);
//     }
//   }
//
//   void _handleBackgroundMessage(RemoteMessage message) {
//     final type = message.data['type'];
//     debugPrint('Handling background message of type: $type');
//
//     if (type == 'chat') {
//     } else if (type == 'offer') {}
//   }
// }
