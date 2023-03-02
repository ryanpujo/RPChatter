class RestApiException implements Exception {
  final int errorCode;

  const RestApiException(this.errorCode);
}
