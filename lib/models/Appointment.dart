import 'package:intl/intl.dart';

class Appointment {
  int doctorId;
  DateTime date;
  String startTime;
  String endTime;
  int id;

  Appointment({
    required this.doctorId,
    required this.date,
    required this.startTime,
    required this.endTime,
    required this.id,
  });

  factory Appointment.fromJson(Map<String, dynamic> json) {
    return Appointment(
      doctorId: json['doctor_id'],
      date: DateTime.parse(json['date']),
      startTime: DateFormat("HH:mm")
          .format(DateFormat("HH:mm:ss").parse(json['start_time'])),
      endTime: DateFormat("HH:mm")
          .format(DateFormat("HH:mm:ss").parse(json['end_time'])),
      id: json['id'],
    );
  }
}
