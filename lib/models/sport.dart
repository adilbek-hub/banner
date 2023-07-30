class SportModel {
  const SportModel(this.image, this.name);
  final String image;
  final String name;
}

const one = SportModel('plus', 'exercise');
const two = SportModel('plus', 'exercise');

List<SportModel> oneTwoList = [one, two];

//sport2
class SportModel2 {
  const SportModel2(this.image, this.name);
  final String image;
  final String name;
}

const bike = SportModel2('plus', 'bike');
const running = SportModel2('plus', 'running');
const swimming = SportModel2('plus', 'swimming');
const aerobics = SportModel2('plus', 'aerobics');
const aquaAerobics = SportModel2('plus', 'aqua aerobics');
const barbell = SportModel2('plus', 'barbell');
const obligueAbdominals = SportModel2('plus', 'obligue abdominals');
const pushUps = SportModel2('plus', 'push-ups');
const pullUps = SportModel2('plus', 'pull-ups');
const scuats = SportModel2('plus', 'scuats');
const stretch = SportModel2('plus', 'stretch');
const chest = SportModel2('plus', 'chest');
const resistanceBand = SportModel2('plus', 'resistance band');
const backExercises = SportModel2('plus', 'back_exercises');
const legExercises = SportModel2('plus', 'leg exercises');
const abs = SportModel2('plus', 'abs');
const warmUpo = SportModel2('plus', 'warm-up');
const handExercises = SportModel2('plus', 'hand exercises');
const neckExercises = SportModel2('plus', 'neck exercises');
const hipExercises = SportModel2('plus', 'hip exercises');
const bicepExercises = SportModel2('plus', 'bicep exercises');
const exercisesOnCalves = SportModel2('plus', 'exercises on calves');
const exercisesOnTheQuadriceps =
    SportModel2('plus', 'exercises on the quadriceps');
const bargainExercises = SportModel2('plus', 'bargain exercises');
const buttocks = SportModel2('plus', 'buttocks');
const barbellExercises = SportModel2('plus', 'barbell exercises');

List<SportModel2> sportModel2 = [
  bike,
  running,
  swimming,
  aerobics,
  aquaAerobics,
  barbell,
  pushUps,
  pullUps,
  scuats,
  stretch,
  chest,
  resistanceBand,
  backExercises,
  legExercises,
  abs,
  warmUpo,
  handExercises,
  neckExercises,
  hipExercises,
  bicepExercises,
  exercisesOnCalves,
  exercisesOnTheQuadriceps,
  bargainExercises,
  buttocks,
  barbell,
];

//sport3
class SportModel3 {
  const SportModel3(this.image, this.name, this.minute, this.date);
  final String image;
  final String name;
  final String minute;
  final String date;
}

const swimming3 = SportModel3('pencl', 'swimming', '30 min', '28.06.23');
const warmUp = SportModel3('pencl', 'warm-up', '20 min', '29.06.23');
List<SportModel3> sportModel3 = [swimming3, warmUp];
