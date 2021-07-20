import 'package:get/get.dart';

class ResultPage extends GetPage{
  ResultPage({required GetView view}) : super(
    name: '/result',
    page: () => view,
  );

}