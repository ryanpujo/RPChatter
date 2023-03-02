class UserAlreadyExistException implements Exception {
  final int errorCode;

  const UserAlreadyExistException(this.errorCode);
}
