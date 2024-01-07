// ignore_for_file: prefer_const_constructors

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/style/app_style.dart';

import '../data/data.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 0, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: h * 0.02,
              ),
              FadeInDown(
                child: Text(
                  'Profile',
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: h * 0.02,
              ),
              FadeInLeft(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      radius: h * 0.08,
                      backgroundImage: AssetImage(AppStyle.profile),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'John Doe',
                          style: TextStyle(
                            fontSize: h * 0.02,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xff1F2A37),
                          ),
                        ),
                        SizedBox(
                          height: h * 0.01,
                        ),
                        Text(
                          '+123 856479683',
                          style: TextStyle(
                            fontSize: h * 0.02,
                            color: const Color(0xff1F2A37),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: h * 0.04,
              ),
              FadeInUp(
                duration: Duration(milliseconds: 1000),
                child: ListView.builder(
                  itemCount: profile.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ListTile(
                          leading: Icon(profile[index].icon),
                          title: Text(profile[index].name),
                          trailing: const Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 18,
                          ),
                          onTap: profile[index].onTap,
                        ),
                        const Divider(
                          color: Color(0xffE5E7EB),
                          thickness: 1,
                        ),
                      ],
                    );
                  },
                ),
              ),
              FadeInUp(
                duration: Duration(milliseconds: 1000),
                child: GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: w * 0.01),
                    child: ListTile(
                      leading: Icon(Icons.logout),
                      title: Text('Logout'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
