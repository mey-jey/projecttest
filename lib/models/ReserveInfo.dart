class ReserveInfo {
  final int doctorId;
  final int patientId;
  final String date;
  final String time;
  final String reason;

  ReserveInfo({
    required this.doctorId,
    required this.patientId,
    required this.date,
    required this.time,
    required this.reason,
  });

  factory ReserveInfo.fromJson(Map<String, dynamic> json) {
    return ReserveInfo(
      doctorId: json['doctor_id'] as int,
      patientId: json['patient_id'] as int,
      date: json['date'] as String,
      time: json['time'] as String,
      reason: json['reason'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'doctor_id': doctorId,
      'patient_id': patientId,
      'date': date,
      'time': time,
      'reason': reason,
    };
  }
}