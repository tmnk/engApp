import 'dart:convert';
class Word {
  String en = '';
  String ru = '';
  List mark = new List();
  int collectionId = 0;
  Word(this.en, this.ru, this.collectionId, this.mark);
  void add(m) {
    mark.add(m);
  }
  double avg() {
    if (mark.length == 0) return 0;
    var sum = 0;
    mark.forEach((el) => sum += el);

    return sum / mark.length;
  }

}
class Collection {
  List data = new List();
  int collectionId;
  DateTime time;
  Collection(this.collectionId, this.data, this.time);
  String jsonReturn() {
    if (data.length == 0) return '';
    var tmpList = new List();
    data.forEach((el) =>  tmpList.add({"en" : el.en, "ru" : el.ru, "collectionId" : this.collectionId.toString(), "mark" : jsonEncode(el.mark)}));
    return jsonEncode(tmpList);
  }
}
//void main() {
//  Word a = new Word("hi", "привет", 0, [4]);
//  Word b = new Word("hijj", "привет", 0, [4, 5]);
//  Word c = new Word("hij", "привет", 0, [4, 3 , 2]);
//  Collection l = new Collection(0, [a,b,c], new DateTime.utc(1989, 11, 9));
//  print(l.jsonReturn());
//
//}