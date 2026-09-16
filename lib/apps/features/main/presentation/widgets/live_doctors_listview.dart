import 'package:doctor_hunt/apps/features/main/presentation/widgets/live_doctor_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LiveDoctorsListView extends StatelessWidget {
  const LiveDoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 168.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return LiveDoctorItem();
        },
      ),
    );
  }
}
