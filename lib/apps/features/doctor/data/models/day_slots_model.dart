class DaySlotModel {
  final String date;
  final int availableSlots;
  final List<String> afternoonSlots;
  final List<String> eveningSlots;

  const DaySlotModel({
    required this.date,
    required this.availableSlots,
    this.afternoonSlots = const [],
    this.eveningSlots = const [],
  });
}

const List<DaySlotModel> daySlots = [
  DaySlotModel(
    date: 'Today, 24 Feb',
    availableSlots: 7,
    afternoonSlots: ['12:00 PM', '12:30 PM', '1:00 PM', '1:30 PM'],
    eveningSlots: ['5:00 PM', '5:30 PM', '6:00 PM'],
  ),
  DaySlotModel(
    date: 'Sunday, 25 Feb',
    availableSlots: 5,
    afternoonSlots: ['12:00 PM', '12:30 PM', '1:00 PM'],
    eveningSlots: ['5:00 PM', '5:30 PM'],
  ),
  DaySlotModel(date: 'Monday, 26 Feb', availableSlots: 0),
  DaySlotModel(date: 'Tuesday, 27 Feb', availableSlots: 0),
  DaySlotModel(
    date: 'Wednesday, 28 Feb',
    availableSlots: 2,
    afternoonSlots: ['12:00 PM'],
    eveningSlots: ['5:00 PM'],
  ),
  DaySlotModel(
    date: 'Thursday, 29 Feb',
    availableSlots: 4,
    eveningSlots: ['5:00 PM', '5:30 PM', '6:00 PM', '6:30 PM'],
  ),
];
