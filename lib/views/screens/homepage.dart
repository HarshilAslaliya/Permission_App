// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:animated_button/animated_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:permission/globals.dart';
import 'package:permission_handler/permission_handler.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Future<void> requestPermission() async {
  //   await [
  //     Permission.location,
  //     Permission.camera,
  //     Permission.notification,
  //   ].request();
  // }
  //
  // @override
  // void initState() {
  //   super.initState();
  //   requestPermission();
  // }

  PermissionStatus location = PermissionStatus.denied;
  PermissionStatus notification = PermissionStatus.denied;
  PermissionStatus camera = PermissionStatus.denied;
  PermissionStatus bluetooth = PermissionStatus.denied;
  PermissionStatus calendar = PermissionStatus.denied;
  PermissionStatus contacts = PermissionStatus.denied;
  PermissionStatus sms = PermissionStatus.denied;
  PermissionStatus storage = PermissionStatus.denied;
  PermissionStatus sensors = PermissionStatus.denied;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text("  Permission Check"),
                    content: Container(
                      height: size.height*0.35,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          PerCheck(name: "Location", permissionStatus: location),
                          PerCheck(
                              name: "Notification",
                              permissionStatus: notification),
                          PerCheck(name: "Camera", permissionStatus: camera),
                          PerCheck(
                              name: "Bluetooth", permissionStatus: bluetooth),
                          PerCheck(name: "Calendar", permissionStatus: calendar),
                          PerCheck(name: "Contacts", permissionStatus: contacts),
                          PerCheck(name: "SMS", permissionStatus: sms),
                          PerCheck(name: "Storage", permissionStatus: storage),
                          PerCheck(name: "Sensors", permissionStatus: sensors),
                        ],
                      ),
                    ),
                  );
                });
          },
          icon: const Icon(Icons.check_box),
        ),
        title: const Text(
          "Permission Handling",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () async {
              await openAppSettings();
            },
            icon: const Icon(
              Icons.settings_outlined,
              size: 30,
            ),
          ),
          SizedBox(
            width: size.width * 0.03,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AnimatedButton(
                height: size.height * 0.055,
                width: size.width * 0.45,
                onPressed: () async {
                 location = await Permission.location.request();

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content: Text("$location"),
                        behavior: SnackBarBehavior.floating,
                        backgroundColor: CupertinoColors.systemGreen),
                  );

                  if (location == PermissionStatus.granted) {
                    log("Go to next page");
                  } else {
                    log("try again...");
                  }
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      "Location",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.white),
                    ),
                    Icon(
                      Icons.location_on_outlined,
                      size: 25,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              AnimatedButton(
                height: size.height * 0.055,
                width: size.width * 0.45,
                onPressed: () async {
                  notification =
                      await Permission.notification.request();

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content: Text("$notification"),
                        behavior: SnackBarBehavior.floating,
                        backgroundColor: CupertinoColors.systemGreen),
                  );

                  if (notification == PermissionStatus.granted) {
                    log("Go to next page");
                  } else {
                    log("try again...");
                  }
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      "Notification",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.white),
                    ),
                    Icon(
                      Icons.notification_add_outlined,
                      size: 25,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              AnimatedButton(
                height: size.height * 0.055,
                width: size.width * 0.45,
                onPressed: () async {
                  camera = await Permission.camera.request();

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content: Text("$camera"),
                        behavior: SnackBarBehavior.floating,
                        backgroundColor: CupertinoColors.systemGreen),
                  );

                  if (camera == PermissionStatus.granted) {
                    log("Go to next page");
                  } else {
                    log("try again...");
                  }
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      "Camera",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.white),
                    ),
                    Icon(
                      Icons.camera_alt_outlined,
                      size: 25,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              AnimatedButton(
                height: size.height * 0.055,
                width: size.width * 0.45,
                onPressed: () async {
                 bluetooth =
                      await Permission.bluetoothConnect.request();

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content: Text("$bluetooth"),
                        behavior: SnackBarBehavior.floating,
                        backgroundColor: CupertinoColors.systemGreen),
                  );

                  if (bluetooth == PermissionStatus.granted) {
                    log("Go to next page");
                  } else {
                    log("try again...");
                  }
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      "Bluetooth",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.white),
                    ),
                    Icon(
                      Icons.bluetooth_connected_outlined,
                      size: 25,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              AnimatedButton(
                height: size.height * 0.055,
                width: size.width * 0.45,
                onPressed: () async {
                  calendar = await Permission.calendar.request();

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content: Text("$calendar"),
                        behavior: SnackBarBehavior.floating,
                        backgroundColor: CupertinoColors.systemGreen),
                  );

                  if (calendar == PermissionStatus.granted) {
                    log("Go to next page");
                  } else {
                    log("try again...");
                  }
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      "Calendar",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.white),
                    ),
                    Icon(
                      Icons.calendar_month_outlined,
                      size: 25,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              AnimatedButton(
                height: size.height * 0.055,
                width: size.width * 0.45,
                onPressed: () async {
                  contacts = await Permission.contacts.request();

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content: Text("$contacts"),
                        behavior: SnackBarBehavior.floating,
                        backgroundColor: CupertinoColors.systemGreen),
                  );

                  if (contacts == PermissionStatus.granted) {
                    log("Go to next page");
                  } else {
                    log("try again...");
                  }
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      "Contacts",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.white),
                    ),
                    Icon(
                      Icons.contacts,
                      size: 25,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              AnimatedButton(
                height: size.height * 0.055,
                width: size.width * 0.45,
                onPressed: () async {
                  sms = await Permission.sms.request();

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content: Text("$sms"),
                        behavior: SnackBarBehavior.floating,
                        backgroundColor: CupertinoColors.systemGreen),
                  );

                  if (sms == PermissionStatus.granted) {
                    log("Go to next page");
                  } else {
                    log("try again...");
                  }
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      "SMS",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.white),
                    ),
                    Icon(
                      Icons.sms_outlined,
                      size: 25,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              AnimatedButton(
                height: size.height * 0.055,
                width: size.width * 0.45,
                onPressed: () async {
                  storage = await Permission.storage.request();

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content: Text("$storage"),
                        behavior: SnackBarBehavior.floating,
                        backgroundColor: CupertinoColors.systemGreen),
                  );

                  if (storage == PermissionStatus.granted) {
                    log("Go to next page");
                  } else {
                    log("try again...");
                  }
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      "Storage",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.white),
                    ),
                    Icon(
                      Icons.storage_outlined,
                      size: 25,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              AnimatedButton(
                height: size.height * 0.055,
                width: size.width * 0.45,
                onPressed: () async {
                  sensors = await Permission.sensors.request();

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content: Text("$sensors"),
                        behavior: SnackBarBehavior.floating,
                        backgroundColor: CupertinoColors.systemGreen),
                  );

                  if (sensors == PermissionStatus.granted) {
                    log("Go to next page");
                  } else {
                    log("try again...");
                  }
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      "Sensors",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.white),
                    ),
                    Icon(
                      Icons.sensors,
                      size: 25,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // Center(
      //   child: ElevatedButton(
      //     onPressed: () async {
      //       PermissionStatus status = await Permission.location.request();
      //
      //       ScaffoldMessenger.of(context).showSnackBar(
      //         SnackBar(
      //           content: Text("$status"),
      //         ),
      //       );
      //
      //       if(status == PermissionStatus.granted){
      //         log("Go to the next page");
      //       }
      //       else{
      //         log("Try again...");
      //       }
      //     },
      //     child: Text("Location service"),
      //   ),
      // ),
    );
  }

  Widget PerCheck({required name, required PermissionStatus permissionStatus}) {
    return Row(
      children: [
        Text(name),
        const Spacer(),
        // (permissionStatus.isGranted)
        //     ? const Text("Permission Granted")
        //     : const Text("Permission Denied"),
        (permissionStatus.isGranted)
            ? const Icon(
                Icons.check_circle,
                color: Colors.green,
              )
            : const Icon(
                Icons.radio_button_unchecked,
                color: Colors.red,
              )
      ],
    );
  }
}
