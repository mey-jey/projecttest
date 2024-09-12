class Patient {
  final String name;
  final String dob;
  final String contactInfo;
  final String medicalHistory;
  final int id;

  Patient({
    required this.name,
    required this.dob,
    required this.contactInfo,
    required this.medicalHistory,
    required this.id,
  });

  factory Patient.fromJson(Map<String, dynamic> json) {
    return Patient(
      name: json['name'] as String,
      dob: json['dob'] as String,
      contactInfo: json['contact_info'] as String,
      medicalHistory: json['medical_history'] as String,
      id: json['id'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'dob': "2024-08-23",
      'contact_info': contactInfo,
      'medical_history': medicalHistory,
    };
  }
}
