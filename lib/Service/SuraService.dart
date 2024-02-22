// ignore_for_file: file_names

import 'package:quran/Service/Api.dart';

class SuraAudioService {
  Future<List> getSuraAudio({required String editor}) async {
    Map<String, dynamic> suraList = await Api().getApi(
        url:
            'https://api3.islamhouse.com/v3/paV29H2gm56kvLPy/quran/get-recitation/$editor/ar/json');
    List<String> suraModelList = [];
    for (int i = 0; i < suraList['attachments'].length; i++) {
      suraModelList.add(suraList['attachments'][0]['url']);
    }
    print(suraModelList[0]);
    print("================================================== ");
    return suraModelList;
  }
}


// import 'package:quran/Service/Api.dart';
// import 'package:quran/models/SuraModel.dart';

// class SuraService {
//   Future<List<SuraModel>> getSuraData() async {
//     Map<String, dynamic> suraList =
//         await Api().getApi(url: 'https://api.alquran.cloud/v1/surah?');
//     List<SuraModel> suraModelList = [];
//     for (int i = 0; i < suraList['data'].length; i++) {
//       suraModelList.add(SuraModel.fromJson(suraList['data'][i]));
//     }

//     return suraModelList;
//   }
// }
