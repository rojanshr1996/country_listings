class DataState<T> {
  final bool isLoading;
  final T? data;
  final Exception? error;

  const DataState({
    required this.isLoading,
    this.data,
    this.error,
  });

  const DataState.unknown()
      : isLoading = false,
        data = null,
        error = null;

  DataState copiedWithIsLoading(bool isLoading) => DataState(
        isLoading: isLoading,
        data: data,
        error: error,
      );
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess({bool isLoading = false, required T data}) : super(isLoading: isLoading, data: data);
}

class DataFailed<T> extends DataState<T> {
  const DataFailed({required bool isLoading, required Exception error}) : super(isLoading: isLoading, error: error);
}
