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
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Profile',
            style: TextStyle(
              fontSize: h * 0.02,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FadeInDown(
              child: Center(
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CircleAvatar(
                      radius: h * 0.085,
                      backgroundImage: AssetImage(AppStyle.profile),
                    ),
                    Padding(
                      padding: EdgeInsets.all(h * 0.012),
                      child: Container(
                        height: h * 0.032,
                        width: h * 0.032,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.black,
                        ),
                        child: Center(
                          child: IconButton(
                            icon: const Icon(
                              Icons.edit,
                              color: Colors.white,
                              size: 18,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: h * 0.02,
            ),
            FadeInDown(
              child: Text(
                'John Doe',
                style: TextStyle(
                  fontSize: h * 0.02,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff1F2A37),
                ),
              ),
            ),
            FadeInDown(
              child: Text(
                '+123 856479683',
                style: TextStyle(
                  fontSize: h * 0.02,
                  color: const Color(0xff1F2A37),
                ),
              ),
            ),
            SizedBox(
              height: h * 0.02,
            ),
            FadeInUp(
              duration: Duration(milliseconds: 1000),
              child: ListView.builder(
                itemCount: profile.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: w * 0.05),
                    child: Column(
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
                    ),
                  );
                },
              ),
            ),
            FadeInUp(
              duration: Duration(milliseconds: 1000),
              child: GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: w * 0.06),
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
    );
  }
}
