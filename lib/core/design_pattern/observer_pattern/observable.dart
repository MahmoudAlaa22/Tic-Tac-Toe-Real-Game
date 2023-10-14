import '../desugn_patter_export.dart';

//!2
class Observable {
  List<Observer> _observers = [];

  void attach(Observer observer) {
    _observers.add(observer);
  }

  void detach(Observer observer) {
    _observers.remove(observer);
  }

  bool contains(Observer observer) {
    return _observers.contains(observer);
  }

  void notify() {
    for (var observer in _observers) {
      observer.update();
    }
  }
}

