import 'package:flutter/foundation.dart';
import '../states/base_state.dart';

abstract class BaseController<T extends BaseState> implements ValueListenable<T> {
  late final ValueNotifier<T> _stateNotifier;

  T get state => _stateNotifier.value;

  @override
  T get value => _stateNotifier.value;

  BaseController(T initialState) {
    _stateNotifier = ValueNotifier<T>(initialState);
  }

  void update(T newState) {
    _stateNotifier.value = newState;
  }

  @override
  void addListener(VoidCallback listener) {
    _stateNotifier.addListener(listener);
  }

  @override
  void removeListener(VoidCallback listener) {
    _stateNotifier.removeListener(listener);
  }

  void dispose() {
    _stateNotifier.dispose();
  }
}
