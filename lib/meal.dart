class Meal {
  int id;
  String title;
  String duration;
  Type type;
  num price;
  String image;
  List<String> ingredients;
  List<String> steps;

  Meal(this.id, this.title, this.duration, this.type, this.price, this.ingredients, this.steps, this.image);
}

final mealList = [
  [
    Meal(0, "Osh", "1 hour", Type.hard, 300, [
      'Onion',
      'Oil',
      'Meat',
      'Rice',
      'Water',
    ], [
      'fdjskafjskladfjalkd'
    ] , 'https://4.bp.blogspot.com/_qJ2JCMap_Xw/TGP1d-e7vvI/AAAAAAAAA08/3bjGtIyqjKc/s1600/pp.jpg'),
    Meal(1, "Shashlik", "30 minut", Type.medium, 20 , [
      'Onion',
      'Oil',
      'Meat',
      'Rice',
      'Water',
    ], [
      'fdjskafjskladfjalkd'
    ] , 'https://turan-travel.com/uploads/blog/kabob/og-image/472091534846673.jpeg'),
  ],
  [
    Meal(0, "Mastava", "30 minut", Type.easy, 20 , [
      'Onion',
      'Oil',
      'Meat',
      'Rice',
      'Water',
    ], [
      'fdjskafjskladfjalkd'
    ] , 'https://i2.wp.com/rusuz.com/wp-content/uploads/2017/09/Mastava-scaled.jpg?fit=1200%2C800&ssl=1'),
    Meal(1, "Sho'rva", "50", Type.medium, 20, [
    'Onion',
    'Oil',
    'Meat',
    'Rice',
    'Water',
    ], [
    'fdjskafjskladfjalkd'
    ] , 'https://img.freepik.com/premium-photo/shurpa-is-traditional-uzbek-soup-with-lamb_112304-1628.jpg?w=2000'),
  ],
  [
    Meal(0, "Napaleon Cake", "20 minut", Type.hard, 20, [
    'Onion',
    'Oil',
    'Meat',
    'Rice',
    'Water',
    ], [
    'fdjskafjskladfjalkd'
    ] , 'https://hips.hearstapps.com/hmg-prod/images/220713-delish-seo-01-napoleon-cake-horizontal-v4-080-eb-1658416568.jpg?crop=0.9057777777777778xw:1xh;center,top&resize=1200:*'),
  ],
  [
    Meal(0, "Lavash", "30 minut", Type.easy, 20, [
      'Onion',
      'Oil',
      'Meat',
      'Rice',
      'Water',
    ], [
      'fdjskafjskladfjalkd'
    ] , 'https://www.healthyseasonalrecipes.com/wp-content/uploads/2022/09/mediterranean-lavash-wraps-sq-053.jpg'),
  ],
  [
    Meal(0, "Choy", "10 minut", Type.easy, 20, [
      'Onion',
      'Oil',
      'Meat',
      'Rice',
      'Water',
    ], [
      'fdjskafjskladfjalkd'
    ] , 'https://www.advantour.com/img/uzbekistan/cuisine/tea.jpg'),
  ],
  [
    Meal(0, "Somsa", "40", Type.hard, 20, [
      'Onion',
      'Oil',
      'Meat',
      'Rice',
      'Water',
    ], [
      'fdjskafjskladfjalkd'
    ] , 'https://arbuz.com/wp-content/uploads/2009/07/Somsa-Samosa-Sambusa.jpg'),
  ],
];

enum Type {
  easy, medium, hard
}