class FailePreconditionException implements Exception {
  final int errorCode;
  final String message;

  const FailePreconditionException(
    this.errorCode,
    this.message,
  );
}
