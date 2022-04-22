import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../common/theme/app_colors.dart';
import '../data_off/model.dart';

class SelectDropListBorder extends StatefulWidget {
  final OptionItem itemSelected;
  final DropListModel dropListModel;
  final Function(OptionItem optionItem) onOptionSelected;

  SelectDropListBorder(
    this.itemSelected,
    this.dropListModel,
    this.onOptionSelected,
  );

  @override
  _SelectDropListBorderState createState() => _SelectDropListBorderState(
        itemSelected,
        dropListModel,
      );
}

class _SelectDropListBorderState extends State<SelectDropListBorder> with SingleTickerProviderStateMixin {
  OptionItem optionItemSelected;
  final DropListModel dropListModel;

  late AnimationController expandController;
  late Animation<double> animation;
  bool isShow = false;

  _SelectDropListBorderState(this.optionItemSelected, this.dropListModel);

  @override
  void initState() {
    super.initState();
    expandController = AnimationController(vsync: this, duration: const Duration(milliseconds: 100));
    animation = CurvedAnimation(
      parent: expandController,
      curve: Curves.fastOutSlowIn,
    );
    _runExpandCheck();
  }

  void _runExpandCheck() {
    if (isShow) {
      expandController.forward();
    } else {
      expandController.reverse();
    }
  }

  @override
  void dispose() {
    expandController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        InkWell(
          onTap: () {
            isShow = !isShow;
            _runExpandCheck();
            setState(() {});
          },
          child: Container(
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
              top: 7,
              bottom: 7,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
              border: Border.all(
                color: AppColors.primary,
                width: 1,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      optionItemSelected.title!,
                      style: const TextStyle(color: AppColors.black404040, fontWeight: FontWeight.w300, fontSize: 14, fontStyle: FontStyle.italic),
                    )),
                    Align(
                      alignment: const Alignment(1, 0),
                      child: Icon(
                        isShow ? Icons.arrow_right : Icons.arrow_drop_down,
                        color: AppColors.primary,
                      ),
                    ),
                  ],
                ),
                SizeTransition(
                  axisAlignment: 0.5,
                  sizeFactor: animation,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                      // boxShadow: [BoxShadow(blurRadius: 25, spreadRadius: 0, color: AppColors.black.withOpacity(0.25), offset: Offset(0, 8))],
                    ),
                    child: SingleChildScrollView(
                      child: _buildDropListOptions(dropListModel.listOptionItems, context),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Column _buildDropListOptions(List<OptionItem> items, BuildContext context) {
    return Column(
      children: items.map((item) => _buildSubMenu(item, context)).toList(),
    );
  }

  Widget _buildSubMenu(OptionItem item, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 0,
        bottom: 10,
      ),
      child: GestureDetector(
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.only(top: 15),
                child: Text(item.title!,
                    style: const TextStyle(color: AppColors.black404040, fontWeight: FontWeight.w300, fontSize: 14, fontStyle: FontStyle.italic),
                    maxLines: 3,
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.ellipsis),
              ),
            ),
          ],
        ),
        onTap: () {
          optionItemSelected = item;
          isShow = false;
          expandController.reverse();
          widget.onOptionSelected(item);
        },
      ),
    );
  }
}
