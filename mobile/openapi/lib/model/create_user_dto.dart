//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateUserDto {
  /// Returns a new [CreateUserDto] instance.
  CreateUserDto({
    required this.email,
    required this.password,
    required this.firstName,
    required this.lastName,
    this.storageLabel,
    this.externalPath,
  });

  String email;

  String password;

  String firstName;

  String lastName;

  String? storageLabel;

  String? externalPath;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateUserDto &&
     other.email == email &&
     other.password == password &&
     other.firstName == firstName &&
     other.lastName == lastName &&
     other.storageLabel == storageLabel &&
     other.externalPath == externalPath;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (email.hashCode) +
    (password.hashCode) +
    (firstName.hashCode) +
    (lastName.hashCode) +
    (storageLabel == null ? 0 : storageLabel!.hashCode) +
    (externalPath == null ? 0 : externalPath!.hashCode);

  @override
  String toString() => 'CreateUserDto[email=$email, password=$password, firstName=$firstName, lastName=$lastName, storageLabel=$storageLabel, externalPath=$externalPath]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'email'] = this.email;
      json[r'password'] = this.password;
      json[r'firstName'] = this.firstName;
      json[r'lastName'] = this.lastName;
    if (this.storageLabel != null) {
      json[r'storageLabel'] = this.storageLabel;
    } else {
    //  json[r'storageLabel'] = null;
    }
    if (this.externalPath != null) {
      json[r'externalPath'] = this.externalPath;
    } else {
    //  json[r'externalPath'] = null;
    }
    return json;
  }

  /// Returns a new [CreateUserDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateUserDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return CreateUserDto(
        email: mapValueOfType<String>(json, r'email')!,
        password: mapValueOfType<String>(json, r'password')!,
        firstName: mapValueOfType<String>(json, r'firstName')!,
        lastName: mapValueOfType<String>(json, r'lastName')!,
        storageLabel: mapValueOfType<String>(json, r'storageLabel'),
        externalPath: mapValueOfType<String>(json, r'externalPath'),
      );
    }
    return null;
  }

  static List<CreateUserDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateUserDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateUserDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateUserDto> mapFromJson(dynamic json) {
    final map = <String, CreateUserDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateUserDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateUserDto-objects as value to a dart map
  static Map<String, List<CreateUserDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateUserDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateUserDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'email',
    'password',
    'firstName',
    'lastName',
  };
}

