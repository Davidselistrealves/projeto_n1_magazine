class Goods {
  final String name;
  final String photo;
  final String description;
  final String value;
  final String parcel;
  bool isFavorite;

  Goods({
    required this.name,
    required this.description,
    required this.parcel,
    required this.photo,
    required this.value,
    this.isFavorite = false,
  });
}
