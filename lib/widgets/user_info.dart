import 'package:flutter/material.dart';

import '../style/app_style.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});
  @override
  Widget build(BuildContext context) {
    return ListTile(
        contentPadding: EdgeInsets.zero,
        title: const Padding(
          padding: EdgeInsets.only(bottom: 7),
          child: Text("👋 Hello!"),
        ),
        subtitle: Text(
          "Zohaib Shahid",
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(fontWeight: FontWeight.w700),
        ),
        trailing: const CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(AppStyle.profile),
        ));
  }
}