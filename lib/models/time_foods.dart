class TimeFoods {
  const TimeFoods({
    required this.time,
    this.nameFood,
    this.foodImage,
  });
  final String time;
  final String? nameFood;
  final String? foodImage;
}

const firstFood = TimeFoods(
    time: '09:00', nameFood: 'eggs with began', foodImage: 'FryingPan');

const secondFood = TimeFoods(time: '12:00');

const thirdFood = TimeFoods(time: '16:00');

const fourthFood = TimeFoods(time: '20:00');

List<TimeFoods> timeFoodsList = [
  firstFood,
  secondFood,
  thirdFood,
  fourthFood,
];
