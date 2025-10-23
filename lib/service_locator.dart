import 'package:flutter_counter_navigation/counter_model.dart';

class ServiceLocator {
  static final ServiceLocator _instance = ServiceLocator._internal();
  factory ServiceLocator() => _instance;
  ServiceLocator._internal();

  CounterModel? _sharedCounter;

  CounterModel getSharedCounter() {
    _sharedCounter ??= CounterModel();
    return _sharedCounter!;
  }

  void resetSharedCounter() {
    _sharedCounter?.reset();
  }
}
