class User {
  final String gender;
  final String name;
  final String phone;
  final DateTime dob;
  final String parentId;
  final String id;
  final String spouseId;
  final String pustaNo;

  User({
    required this.gender,
    required this.name,
    required this.phone,
    required this.dob,
    required this.id,
    required this.parentId,
    required this.spouseId,
    required this.pustaNo,
  });
  static List<String> personName = ["manjesh", "jyoti", "pratik", "kushal"];
  Map<String, dynamic> toMap() {
    return {
      'gender': gender,
      'name': name,
      'phone': phone,
      'dob': dob,
      'parentId': parentId,
      'id': id,
      'spouseId': spouseId,
      'pustaNo.': pustaNo,
    };
  }
}
