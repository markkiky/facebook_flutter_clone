import 'package:meta/meta.dart';

class User {
  final String name;
  final String imageUrl;
  final bool is_active;

  const User(
      {required this.name, required this.imageUrl, this.is_active = true});
}
