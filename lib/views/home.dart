// ignore_for_file: prefer__ructors, prefer_const_constructors

import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../data/data.dart';
import '../size_configuration.dart';
import '../style/app_style.dart';
import '../widgets/medical_service.dart';
import '../widgets/upcoming_appointments.dart';
import '../widgets/user_info.dart';

class HomeView extends StatefulWidget { 
   const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.blockSizeHorizontal! * 7,
            ),
            child: Column(
              children: [
                // User Info Area .
                FadeInLeft(child: UserInfo()),
                // SearchMedical Area.
                FlipInY(
                    duration:  Duration(milliseconds: 500),
                    delay:  Duration(milliseconds: 1000),
                    child:  SearchMedical()),
                // Services Area .
                FadeInDown(child: Services()),
                // GetBestMedicalService
                FadeInRight(
                    delay:  Duration(milliseconds: 1100),
                    child:  GetBestMedicalService()),
              ],
            ),
          ),
          // Upcoming Appointments
          FadeInUp(
              delay:  Duration(milliseconds: 1300),
              child:  UpcomingAppointments())
        ],
      ),
    );
  }
}



class SearchMedical extends StatelessWidget {
   const SearchMedical({super.key});
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: SizeConfig.blockSizeVertical! * 3),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          prefixIcon: CupertinoButton(
            onPressed: () {},
            child: SvgPicture.asset(AppStyle.searchIcon),
          ),
          suffixIcon: CupertinoButton(
            onPressed: () {},
            child: SvgPicture.asset(AppStyle.filtterIcon),
          ),
          hintText: "Search medical..",
          fillColor: AppStyle.inputFillColor,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ),
    );
  }
}

class Services extends StatelessWidget {
   const Services({super.key});
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "Services",
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(fontWeight: FontWeight.w700, letterSpacing: 1),
        ),
         SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: servicesList
              .map(
                (e) => CupertinoButton(
                  onPressed: () {},
                  padding: EdgeInsets.zero,
                  child: Container(
                    width: SizeConfig.blockSizeHorizontal! * 17,
                    height: SizeConfig.blockSizeHorizontal! * 17,
                    decoration: BoxDecoration(
                      color: e.color,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: SvgPicture.asset(e.image),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
