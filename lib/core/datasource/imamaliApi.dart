
import 'package:http/http.dart' as http;
import 'package:http/http.dart';


class ImamAliApi {
  requestForCoupon(
      List<String> mrz,int numberOfPeople, String deviceId, String publicIp,
      String resetDate, String singleDigit,
      String authToken, String selectedLanguage
      ) async {
    String res = "";
    http.StreamedResponse response;
    var headers = {
      'Content-Type': 'application/x-www-form-urlencoded',
      'Cookie': 'PHPSESSID=ff028c2d9ff82f7141eca7fb936dbe2b'
    };
    Request request = http.Request('POST', Uri.parse('Urls.resetUrl'));
    request.headers.addAll(headers);

    // 'mrz':  '["IDIRQAA06725848198682605032<<<\\n8612065M2604240IRQ<<<<<<<<6<<<\\n.XSSNDWQ<<<RAR<<<<<<<<<<<<<<<<", "IDIRQAM37633974201293723077<<<\\n1212097M2412089IRQ<<<<<<<<<<<1\\nEWYNH<<ZYN<ALEABDYN<<<<<<<<<<<"]',
    List<String> mrzList = mrz.map((item) => '"${item.replaceAll("\n", "\\n")}"').toList();

    request.bodyFields = {
      'mrz':'${mrzList}',
      // 'number_of_people': numberOfPeople.toString(),
      'device_id': deviceId,
      'public_ip': publicIp,
      'reset_date': resetDate,
      'single_digit': /*(int.parse(singleDigit)+1).toString()*/"1",
      'reset_type': singleDigit=="0"?"3":"2",
      'auth_token': authToken,
      'lang': selectedLanguage,
    };
    try {
      response = await request.send().timeout(Duration(seconds: 60));
    } catch (e){
      return res;
    }
    if (response.statusCode == 200) {
      res = await response.stream.bytesToString();
    }

    else {
      print(response.reasonPhrase);
    }
    return res;
  }

  checkUser({String userId = '03f792fb97454eb53014c2fa5edc892c'}) async {
    var headers = {'Content-Type': 'application/x-www-form-urlencoded'};
    var request = http.Request('POST', Uri.parse('Urls.checkUrl'));
    request.bodyFields = {'user_id': userId};
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
    }
  }
}
