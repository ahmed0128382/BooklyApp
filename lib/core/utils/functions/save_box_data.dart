import 'package:hive/hive.dart';
import 'package:storeapp/features/home/domain/entities/book_entity.dart';

void saveData(List<BookEntity> books, String boxName) {
  var box = Hive.box(boxName);
  box.addAll(books);
}
