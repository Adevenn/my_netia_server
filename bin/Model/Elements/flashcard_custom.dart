import 'element_custom.dart';

class FlashcardCustom extends ElementCustom {
  List<String> front, back;

  FlashcardCustom(
      {required int id,
      required int idSheet,
      required this.back,
      required this.front,
      required int idOrder})
      : super(id: id, idSheet: idSheet, idOrder: idOrder);

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'id_sheet': idSheet,
        'back': back,
        'front': front,
        'elem_order': idOrder,
        'elem_type': runtimeType.toString(),
      };
}


