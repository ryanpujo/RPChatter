class ValidationException implements Exception {
  final int statusCode;
  final Map<String, String> errors;

  ValidationException({required this.statusCode, required this.errors});
}
