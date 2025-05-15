import 'package:equatable/equatable.dart';

class BookEntity extends Equatable {
  final String? bookImage;
  final String title;
  final String? author;
  final num? price;
  final num? rating;
  final int? ratingCount;

  const BookEntity(
      {required this.bookImage,
      required this.title,
      required this.author,
      required this.price,
      required this.rating,
      required this.ratingCount});

  @override
  List<Object?> get props => throw UnimplementedError();
}
