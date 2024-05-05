import 'package:flutter/material.dart';

import '../../../utility/constants.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key,
    required this.searchTextController,
  });

  final TextEditingController searchTextController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffe9eaeb), width: 1.1),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 3.0),
            child: Icon(
              applyTextScaling: true,
              Icons.search,
              size: 18,
              color: Colors.grey,
            ),
          ),
          const SizedBox(width: 4.0),
          Expanded(
            child: TextFormField(
              controller: searchTextController,
              style: TextStyle(
                color: AppColor.grey,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                border: InputBorder.none,
                isDense: true,
                contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                hintText: 'Search products',
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
