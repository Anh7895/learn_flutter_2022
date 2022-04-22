import 'package:flutter/cupertino.dart';

import 'data_off/model.dart';
import 'widget/custom_scaffold.dart';
import 'widget/select_drop_list.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  DropListModel dropListModel = DropListModel([OptionItem(id: "1", title: "Option 1"), OptionItem(id: "2", title: "Option 2")]);
  OptionItem optionItemSelected = OptionItem(id: null, title: "Chọn quyền truy cập");
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: 'hello',
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          SelectDropListBorder(
            optionItemSelected,
            dropListModel,
            (optionItem) {
              optionItemSelected = optionItem;
              setState(() {});
            },
          )
        ],
      ),
    );
  }
}
