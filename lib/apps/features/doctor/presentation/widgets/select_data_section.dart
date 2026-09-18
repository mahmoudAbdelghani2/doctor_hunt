import 'package:doctor_hunt/apps/features/doctor/data/models/day_slots_model.dart';
import 'package:doctor_hunt/apps/features/doctor/presentation/widgets/available_slots_section.dart';
import 'package:doctor_hunt/apps/features/doctor/presentation/widgets/date_and_slots_container_widget.dart';
import 'package:doctor_hunt/generated/style_atom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectDateSection extends StatefulWidget {
  const SelectDateSection({super.key});

  @override
  State<SelectDateSection> createState() => _SelectDateSectionState();
}

class _SelectDateSectionState extends State<SelectDateSection> {
  int selectedDateIndex = 0;
  List<DaySlotModel> days = daySlots;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 75.h,
          child: ListView.builder(
            itemCount: days.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final isSelected = selectedDateIndex == index;
              return Padding(
                padding: EdgeInsets.only(right: 16.w),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedDateIndex = index;
                    });
                  },
                  child: DateAndSlotsContainerWidget(
                    date: days[index].date,
                    availableSlots: days[index].availableSlots,
                    isSelected: isSelected,
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(height: 19.h),
        Align(
          alignment: Alignment.center,
          child: Text(
            days[selectedDateIndex].date,
            style: context.semiBold18TextMain,
          ),
        ),
        SizedBox(height: 25.h),
        AvailableSlotsSection(
          availableSlots: days[selectedDateIndex].availableSlots,
          afternoonSlots: days[selectedDateIndex].afternoonSlots,
          eveningSlots: days[selectedDateIndex].eveningSlots,
        ),
      ],
    );
  }
}
