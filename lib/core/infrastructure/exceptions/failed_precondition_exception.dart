class FailePreconditionException implements Exception {
  final int errorCode;

  const FailePreconditionException(this.errorCode);
}
