class User {
  final String gender;
  final String name;
  final String phone;
  final DateTime dob;
  final String parentId;
  final String Id;
  final String spouseId;

  User(
      {required this.gender,
      required this.name,
      required this.phone,
      required this.dob,
      required this.Id,
      required this.parentId,
      required this.spouseId});
  static List<String> personName = ["manjesh", "jyoti", "pratik", "kushal"];
}
