class KlassicOmelet {
  KlassicOmelet({
    required this.ingredients,
    required this.quantity,
    required this.image,
  });
  final String ingredients;
  final String quantity;
  final String image;
}

KlassicOmelet eggs =
    KlassicOmelet(ingredients: 'egg', quantity: '2 pieses', image: '');
KlassicOmelet milk =
    KlassicOmelet(ingredients: 'milk', quantity: '125 ml', image: '');
KlassicOmelet salt = KlassicOmelet(
    ingredients: 'salt', quantity: '0.5 of a teaspoon', image: '');
KlassicOmelet vegetable =
    KlassicOmelet(ingredients: 'vegetable oil', quantity: '', image: '');
KlassicOmelet plusImage =
    KlassicOmelet(image: 'plus', ingredients: '', quantity: '');
List<KlassicOmelet> klassicOmelet = [eggs, milk, salt, vegetable, plusImage];
