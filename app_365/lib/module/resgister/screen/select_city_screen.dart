import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/theme/app_colors.dart';
import '../../../common/theme/app_text_style.dart';
import '../../../widget/outline_textfield.dart';
import '../../intro/model/result_search.dart';
import '../bloc/register_bloc.dart';
import '../bloc/register_event.dart';
import '../bloc/register_state.dart';

class SelectCityScreen extends StatefulWidget {
  const SelectCityScreen({Key? key}) : super(key: key);

  @override
  State<SelectCityScreen> createState() => _SelectCityScreenState();
}

class _SelectCityScreenState extends State<SelectCityScreen> {
  RegisterBloc? registerBloc;
  List<Tinhthanh> listFilter = [];
  List<Tinhthanh> list = [];

  @override
  void initState() {
    registerBloc = BlocProvider.of<RegisterBloc>(context);
    registerBloc!.add(GetProvince());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 59,
                width: double.infinity,
              ),
              Text(
                "TỈNH/ THÀNH PHỐ",
                style: AppTextStyles.regularW400(context, size: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              OutlineTextField(
                hintText: "Nhập để tìm kiếm",
                onChanged: (value) {
                  setState(() {
                    listFilter = list
                        .where(
                          (element) =>
                          element.citName.toLowerCase().contains(
                            value!.toLowerCase(),
                          ),
                    )
                        .toList();
                  });
                },
              ),
              const SizedBox(
                height: 30,
              ),
              BlocConsumer<RegisterBloc, RegisterState>(
                listener: (context, state) {
                  if (state is ListProvinceLoaded) {
                    setState(() {
                      list = state.list;
                      listFilter = state.list;
                    });
                  }
                },
                builder: (context, state) {
                  if (state is ListProvinceLoaded) {
                    return ListView.separated(
                        shrinkWrap: true, // boc thi them thuoc tinh shrinkWrap
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () {},
                            child: Text(
                              listFilter[index].citName,
                              style: AppTextStyles.regularW400(
                                  context,
                                  size: 20, color:AppColors.black404040,
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) =>
                        const Divider(
                          color: Colors.black,
                        ),
                        itemCount: listFilter.length);
                  }
                  return const SizedBox.shrink();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
