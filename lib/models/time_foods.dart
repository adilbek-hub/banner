class TimeFoods {
  const TimeFoods({
    this.time,
    this.nameFood,
    this.foodImage,
  });
  final String? time;
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

// Emogi
const emoji1 = TimeFoods(foodImage: 'meat', nameFood: 'meat');
const emoji2 = TimeFoods(foodImage: 'alhogol', nameFood: 'alhogol');
const emoji3 = TimeFoods(foodImage: 'fish', nameFood: 'fish');
const emoji4 = TimeFoods(foodImage: 'eggs', nameFood: 'eggs');
const emoji5 = TimeFoods(foodImage: 'oils', nameFood: 'oils');
const emoji6 = TimeFoods(foodImage: 'baking', nameFood: 'baking');
const emoji7 = TimeFoods(foodImage: 'nuts', nameFood: 'nuts');
const emoji8 = TimeFoods(foodImage: 'juice', nameFood: 'juice');
const emoji9 = TimeFoods(foodImage: 'vegetables', nameFood: 'vegetables');
const emoji10 = TimeFoods(foodImage: 'rice', nameFood: 'rice');
const emoji11 = TimeFoods(foodImage: 'fast_food', nameFood: 'fast_food');
const emoji12 = TimeFoods(foodImage: 'coffee', nameFood: 'coffee');
const emoji13 = TimeFoods(foodImage: 'fruit', nameFood: 'fruit');
const emoji14 = TimeFoods(foodImage: 'soup', nameFood: 'soup');
const emoji15 = TimeFoods(foodImage: 'milk', nameFood: 'milk');
const emoji16 = TimeFoods(foodImage: 'pasta', nameFood: 'pasta');
const emoji17 = TimeFoods(foodImage: 'sweet', nameFood: 'sweet');
const emoji18 = TimeFoods(foodImage: 'meat', nameFood: 'meat');

List<TimeFoods> emogiList = [
  emoji1,
  emoji2,
  emoji3,
  emoji4,
  emoji5,
  emoji6,
  emoji7,
  emoji8,
  emoji9,
  emoji10,
  emoji11,
  emoji12,
  emoji13,
  emoji14,
  emoji15,
  emoji16,
  emoji17,
  emoji18,
];
