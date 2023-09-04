import 'dart:math';
import 'package:http/http.dart' as http;

class Apiconst{
Future<dynamic>getUsers() async{
  try{
    var uri = Uri.parse("https://github.com/Sadyrbek9/Sadyrbek.github.io/blob/main/My%20Data/index.html");
    var responce = await http.get(uri);
    if (responce.statusCode == 200) {
      print(responce.body);
    }


  }catch(e) {
    log(e.toString() as num);
  }
  return null;
}
}
final apiServise = Apiconst().getUsers();