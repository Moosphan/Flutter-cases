
import 'package:scoped_model/scoped_model.dart';
/// 计数的model
///
class CountModel extends Model {
  int _count = 0;
  get count => _count;

  void increment() {
    _count ++;
    // Then notify all the listeners.
    notifyListeners();
  }
}