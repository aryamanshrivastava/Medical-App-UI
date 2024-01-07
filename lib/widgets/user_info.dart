import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: const Padding(
        padding: EdgeInsets.only(bottom: 7),
        child: Text(
          "👋 Hello!",
          style: TextStyle(
            fontWeight: FontWeight.w500
          ),
        ),
      ),
      subtitle: Text(
        "Jone Doe",
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .copyWith(fontWeight: FontWeight.w700),
      ),
      trailing: const CircleAvatar(
          radius: 30,
          child: Icon(
            Icons.notifications,
            size: 30,
          )),
    );
  }
}
