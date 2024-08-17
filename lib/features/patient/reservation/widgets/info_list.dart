
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class InfoListWidget extends StatelessWidget {
  final List<String> items = [
    'نام و نام خانوادگی',
    'سال تولد',
    'شغل',
    'مدرک تحصیلی',
  ];
  Map<int,String> response = {};

  @override
  Widget build(BuildContext context) {
    void _showBottomSheet(BuildContext context, String title) {
      showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        builder: (context) {
          return _TextInput(title: title);
        },
      );
    }

    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFF5F7F9),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RowItem(title: items[0], value: 'محمدهادی احمدیان',onTap: () {
            _showBottomSheet(context, items[0]);
          },),
          const Divider(height: 0,),
          RowItem(title: items[1], onTap: () {
            _showBottomSheet(context, items[1]);
          },),
          const Divider(height: 0,),
          RowItem(title: items[2], onTap: () {
            _showBottomSheet(context, items[2]);
          },),
          const Divider(height: 0,),
          RowItem(title: items[3], onTap: () {
            _showBottomSheet(context, items[3]);
          },),
        ],
      ),
    );
  }

}

class _TextInput extends StatelessWidget {
  final String title;
  const _TextInput({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // Close button and title row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  context.pop();
                },
              ),
              Expanded(
                child: Text(
                  title,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Peyda',
                    color: Color(0xFF0D111B),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          // Text Field container
          Container(
            height: 56,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Color(0xFF0D111B), width: 1),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFE1E3E9),
                  spreadRadius: 4,
                ),
                BoxShadow(
                  color: Color(0xFFFFFFFF),
                  spreadRadius: 2,
                ),
              ],
            ),
            child: TextField(
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                hintText: 'اینجا بنویس',
                fillColor: Colors.transparent,
                hintStyle: TextStyle(
                  color: Color(0xFF999FAD),
                  fontSize: 14,
                  fontFamily: 'Peyda',
                  fontWeight: FontWeight.w400,
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 12),
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(height: 24),
          // Confirm button
          Container(
            width: double.infinity,
            height: 56,
            decoration: BoxDecoration(
              color: Color(0xFFF1F4F7),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Text(
                'تایید',
                style: TextStyle(
                  color: Color(0xFFC9CFD8),
                  fontSize: 14,
                  fontFamily: 'Peyda',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}



class RowItem extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final String? value;

  const RowItem({
    Key? key,
    required this.title,
    required this.onTap,
    this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: value == null ? _buildEmptyState() : _buildFilledState(),
    );
  }

  Widget _buildEmptyState() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: const Color(0xFF335BFF), width: 2),
                ),
                child: const Icon(Icons.add, size: 12, color: Color(0xFF335BFF)),
              ),
              const SizedBox(width: 8),
              const Text(
                'افزودن',
                style: TextStyle(
                  color: Color(0xFF335BFF),
                  fontSize: 12,
                  fontFamily: 'Peyda',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Text(
            title,
            style: const TextStyle(
              color: Color(0xFF999FAD),
              fontSize: 12,
              fontFamily: 'Peyda',
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFilledState() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.transparent,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 4, left: 4, right: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SvgPicture.asset("assets/svgs/edit.svg",),
                ),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color(0xFF999FAD),
                    fontSize: 12,
                    fontFamily: 'Peyda',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: Text(
                    value ?? '',
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                      color: Color(0xFF0D111B),
                      fontSize: 14,
                      fontFamily: 'Peyda',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

