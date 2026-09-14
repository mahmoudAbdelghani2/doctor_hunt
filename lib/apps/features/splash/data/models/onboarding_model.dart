class OnboardingModel {
  final String image;
  final String title;
  final String description;

  const OnboardingModel({
    required this.image,
    required this.title,
    required this.description,
  });
}

const List<OnboardingModel> pages = [
  OnboardingModel(
    image: 'assets/images/onboarding1.png',
    title: 'Find Trusted Doctors',
    description:
        'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.',
  ),
  OnboardingModel(
    image: 'assets/images/onboarding2.png',
    title: 'Choose Best Doctors',
    description:
        'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.',
  ),
  OnboardingModel(
    image: 'assets/images/onboarding3.png',
    title: 'Easy Appointments',
    description:
        'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.',
  ),
];
