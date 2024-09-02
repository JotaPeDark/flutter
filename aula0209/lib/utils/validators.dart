String? validateNotEmpty(String? value, String fieldName) {
  if (value == null || value.isEmpty) {
    return '$fieldName não pode ser vazio.';
  }
  return null;
}
