class SportModel {
  const SportModel(this.image, this.name);
  final String image;
  final String name;
}

const one = SportModel('plus', 'exercise');
const two = SportModel('plus', 'exercise');

List<SportModel> oneTwoList = [one, two];
