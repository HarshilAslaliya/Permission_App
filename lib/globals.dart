import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

List<Map<String,dynamic>> Buttons = [
  {
    'text':"Location",
    'icon':Icons.location_on_outlined,
    'permission': Permission.location,
  },{
    'text':"Notification",
    'icon':Icons.notification_add_outlined,
    'permission': Permission.accessNotificationPolicy,
  },{
    'text':"Camera",
    'icon':Icons.camera_alt_outlined,
    'permission': Permission.camera,
  },{
    'text':"Bluetooth",
    'icon':Icons.bluetooth_connected_outlined,
    'permission': Permission.bluetoothConnect,
  },{
    'text':"Calendar",
    'icon':Icons.calendar_month_outlined,
    'permission': Permission.calendar,
  },{
    'text':"Audio",
    'icon':Icons.audiotrack_outlined,
    'permission': Permission.audio,
  },{
    'text':"Contacts",
    'icon':Icons.contacts,
    'permission': Permission.contacts,
  },{
    'text':"SMS",
    'icon':Icons.sms_outlined,
    'permission': Permission.sms,
  },{
    'text':"Storage",
    'icon':Icons.storage_outlined,
    'permission': Permission.storage,
  },{
    'text':"Sensors",
    'icon':Icons.sensors,
    'permission': Permission.sensors,
  },
];