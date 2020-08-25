import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

main(){
  final data = fetchAlbum();
  data.then((value) => print(value));
}

Future<dynamic> fetchAlbum() async {
  final response = await http.get('http://covidtracking.com/api/us');

  if (response.statusCode == 200) {
    return response.body;
    // return Album.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load album');
  }
}

// class Album {
//   final String title;
//   final int date;
//   final String states;
//   final int positive;
//   final int negative;
//   final int pending;
//   final int hospitalizedCurrently;
//   final int hospitalizedCumulative;
//   final int inIcuCurrently;
//   final int inIcuCumulative;
//   final int onVentilatorCurrently;
//   final int onVentilatorCumulative;
//   final int recovered;
//   final String dateChecked;
//   final int death;
//   final int hospitalized;
//   final String lastModified;
//   final int total;
//   final int totalTestResults;
//   final int posNeg;
//   final int deathIncrease;
//   final int hospitalizedIncrease;
//   final int negativeIncrease;
//   final int positiveIncrease;
//   final int totalTestResultsIncrease;
//   final int hash;
//
//   Album({
//     this.title,
//     this.date,
//     this.states,
//     this.positive,
//     this.negative,
//     this.pending,
//     this.hospitalizedCurrently,
//     this.hospitalizedCumulative,
//     this.inIcuCurrently,
//     this.inIcuCumulative,
//     this.onVentilatorCurrently,
//     this.onVentilatorCumulative,
//     this.recovered,
//     this.dateChecked,
//     this.death,
//     this.hospitalized,
//     this.lastModified,
//     this.total,
//     this.totalTestResults,
//     this.posNeg,
//     this.deathIncrease,
//     this.hospitalizedIncrease,
//     this.negativeIncrease,
//     this.positiveIncrease,
//     this.totalTestResultsIncrease,
//     this.hash,
//    });
//
//   factory Album.fromJson(Map<String, dynamic> json) {
//     return Album(
//       title: json['title'],
//       date: json['date'],
//       states: json['states'],
//       positive: json['positive'],
//       negative: json['negative'],
//       pending: json['pending'],
//       hospitalizedCurrently: json['hospitalizedCurrently'],
//       hospitalizedCumulative: json['hospitalizedCumulative'],
//       inIcuCurrently: json['inIcuCurrently'],
//       inIcuCumulative: json['inIcuCumulative'],
//       onVentilatorCurrently: json['onVentilatorCurrently'],
//       onVentilatorCumulative: json['onVentilatorCumulative'],
//       recovered: json['recovered'],
//       dateChecked: json['dateChecked'],
//       death: json['death'],
//       hospitalized: json['hospitalized'],
//       lastModified: json['lastModified'],
//       total: json['total'],
//       totalTestResults: json['totalTestResults'],
//       posNeg: json['posNeg'],
//       deathIncrease: json['deathIncrease'],
//       hospitalizedIncrease: json['hospitalizedIncrease'],
//       negativeIncrease: json['negativeIncrease'],
//       positiveIncrease: json['positiveIncrease'],
//       totalTestResultsIncrease: json['totalTestResultsIncrease'],
//       hash: json['hash'],
//     );
//   }
// }
