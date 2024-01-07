import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Services {
  final String image;
  final Color color;
  Services({
    required this.image,
    required this.color,
  });
}

// Services List OF DATA
List<Services> servicesList = [
  Services(
    image: 'assets/icons/doctor-Icon.svg',
    color: const Color(0xffDCEDF9),
  ),
  Services(
    image: 'assets/icons/noun-pill.svg',
    color: const Color(0xffFAF0DB),
  ),
  Services(
    image: 'assets/icons/noun-medical-test.svg',
    color: const Color(0xffD6F6FF),
  ),
  Services(
    image: 'assets/icons/noun-corona.svg',
    color: const Color(0xffF2E3E9),
  ),
];

/// Upcoming Appointments
class Appointments {
  final String date;
  final String time;
  final String title;
  final String subTitle;
  final Color color;

  Appointments({
    required this.color,
    required this.date,
    required this.time,
    required this.title,
    required this.subTitle,
  });
}

// Upcoming Appointments List OF DATA
List<Appointments> upcomingAppointmentsList = [
  Appointments(
    date: "12\nTue",
    time: DateFormat('hh:mm a').format(DateTime.now()),
    title: "Dr. Mim Akhter",
    subTitle: "Depression",
    color: const Color(0xff1C6BA4),
  ),
  Appointments(
    date: "12\nTue",
    time: DateFormat('hh:mm a').format(DateTime.now()),
    title: "Dr. Mim Akhter",
    subTitle: "Depression",
    color: const Color(0xff1C6BA4),
  ),
];

/// Profile Data
class ProfileData {
  IconData icon;
  String name;
  void Function() onTap;

  ProfileData({
    required this.name,
    required this.icon,
    required this.onTap,
  });
}

List<ProfileData> profile = [
  ProfileData(name: 'Edit Profile', icon: Icons.person_pin, onTap: () {}),
  ProfileData(
      name: 'Favorite', icon: Icons.favorite_border_outlined, onTap: () {}),
  ProfileData(
      name: 'Notifications',
      icon: Icons.notifications_none_outlined,
      onTap: () {}),
  ProfileData(name: 'Settings', icon: Icons.settings_outlined, onTap: () {}),
  ProfileData(
      name: 'Help and Support',
      icon: Icons.help_outline_outlined,
      onTap: () {}),
  ProfileData(
      name: 'Terms and Conditions',
      icon: Icons.description_outlined,
      onTap: () {}),
];
