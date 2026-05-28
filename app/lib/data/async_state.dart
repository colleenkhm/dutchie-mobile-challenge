sealed class AsyncState<T> {}
class Loading<T> extends AsyncState<T> {}
class Success<T> extends AsyncState<T> {
  Success(this.data);
  final T data;
}
class Failure<T> extends AsyncState<T> {
  Failure(this.message);
  final String message;
}
