class RestApiException implements Exception {
  final int errorCode;
  final String message;

  const RestApiException(this.errorCode, this.message);
}
