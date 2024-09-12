sealed class BaseState {}

class InitialState implements BaseState {}

class LoadingState implements BaseState {}

class SuccessState<R> implements BaseState {
  final R data;
  const SuccessState({required this.data});
}

class ErrorState implements BaseState {
  final String message;
  const ErrorState({required this.message});
}
