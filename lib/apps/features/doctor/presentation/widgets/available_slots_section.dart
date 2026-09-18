import 'package:doctor_hunt/apps/core/widgets/custom_app_button.dart';
import 'package:doctor_hunt/generated/app_colors.dart';
import 'package:doctor_hunt/generated/style_atom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AvailableSlotsSection extends StatefulWidget {
  final int availableSlots;
  final List<String> afternoonSlots;
  final List<String> eveningSlots;
  const AvailableSlotsSection({
    super.key,
    required this.availableSlots,
    required this.afternoonSlots,
    required this.eveningSlots,
  });

  @override
  State<AvailableSlotsSection> createState() => _AvailableSlotsSectionState();
}

class _AvailableSlotsSectionState extends State<AvailableSlotsSection> {
  int selectedAfternoonSlotIndex = -1;
  int selectedEveningSlotIndex = -1;
  @override
  Widget build(BuildContext context) {
    return widget.availableSlots == 0
        ? _buildNoSlotsState(context)
        : _buildSlotsState(context);
  }

  Widget _buildSlotsState(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Afternoon ${widget.afternoonSlots.length} slots',
          style: context.semiBold16TextMain,
        ),
        SizedBox(height: 16.h),
        _buildGridView(
          isAfternoon: true,
          slots: widget.afternoonSlots,
          selectedIndex: selectedAfternoonSlotIndex,
          onSlotSelected: (int p1) {
            setState(() {
              selectedAfternoonSlotIndex = p1;
              selectedEveningSlotIndex = -1;
            });
          },
        ),
        Text(
          'Evening ${widget.eveningSlots.length} slots',
          style: context.semiBold16TextMain,
        ),
        SizedBox(height: 16.h),
        _buildGridView(
          isAfternoon: false,
          slots: widget.eveningSlots,
          selectedIndex: selectedEveningSlotIndex,
          onSlotSelected: (int p1) {
            setState(() {
              selectedEveningSlotIndex = p1;
              selectedAfternoonSlotIndex = -1;
            });
          },
        ),
      ],
    );
  }

  GridView _buildGridView({
    required bool isAfternoon,
    required List<String> slots,
    required int selectedIndex,
    required Function(int) onSlotSelected,
  }) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 10.h,
        crossAxisSpacing: 8.w,
        childAspectRatio: 2.2,
      ),
      itemCount: slots.length,
      itemBuilder: (context, index) {
        final isSelected = selectedIndex == index;
        return GestureDetector(
          onTap: () {
            onSlotSelected(index);
          },
          child: _buildTimeContainerWidget(
            context,
            isSelected: isSelected,
            time: slots[index],
          ),
        );
      },
    );
  }

  Widget _buildNoSlotsState(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('No slots available', style: context.semiBold14TextSub),
        SizedBox(height: 20.h),
        CustomAppButton(
          onPressed: () {
            // GoRouter.of(context).pop();
          },
          text: 'Next availability on wed, 24 Feb',
        ),
        SizedBox(height: 14.h),
        Text('Or', style: context.regular14TextSub),
        SizedBox(height: 20.h),
        CustomAppButton(
          onPressed: () {
            // GoRouter.of(context).pop();
          },
          text: 'Contact Clinic',
          backgroundColor: AppColors.white,
          textStyle: context.semiBold16Primary,
        ),
      ],
    );
  }

  Container _buildTimeContainerWidget(
    BuildContext context, {
    required bool isSelected,
    required String time,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected
            ? AppColors.primary
            : AppColors.secondary.withOpacity(0.11),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(8.r),
          child: Text(
            time,
            style: isSelected
                ? context.semiBold16White
                : context.semiBold16Primary,
          ),
        ),
      ),
    );
  }
}
