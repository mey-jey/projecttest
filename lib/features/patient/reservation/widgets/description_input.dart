import 'package:flutter/material.dart';

class DescriptionInputWidget extends StatelessWidget {
  final String descriptionTitle;
  final String descriptionHint;
  final String checkboxTitle;
  final String checkboxSubtitle;
  final bool isChecked;

  const DescriptionInputWidget({
    super.key,
    this.descriptionTitle = 'شرح حال',
    this.descriptionHint = 'توضیح کوتاهی درباره شرح حال خود و دلیل نیاز به رزرو نوبت بنویسید',
    this.checkboxTitle = 'فایل‌های الکترونیک من برای پزشک قابل دسترسی باشد',
    this.checkboxSubtitle = 'در صورت انتخاب، پزشک می‌تواند از اطلاعات پزشکی شما استفاده و درمان بهتری تجویز کند',
    this.isChecked = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildDescriptionSection(),
          const SizedBox(height: 20),
          _buildCheckboxSection(),
        ],
      ),
    );
  }

  Widget _buildDescriptionSection() {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  '*',
                  style: TextStyle(
                    color: Color(0xFFFA3747),
                    fontSize: 12,
                    fontFamily: 'Peyda',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 4),
                Text(
                  descriptionTitle,
                  style: TextStyle(
                    color: Color(0xFF0D111B),
                    fontSize: 12,
                    fontFamily: 'Peyda',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Container(
            width: double.infinity,
            height: 112,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Color(0x3D999FAD), width: 1),
              boxShadow: [
                BoxShadow(
                  color: Color(0x070D111B),
                  blurRadius: 2,
                  offset: Offset(0, 1),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Align(
                alignment: Alignment.topRight,
                child: TextField(
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    hintText: descriptionHint,
                    hintMaxLines: 3,
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
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCheckboxSection() {
    return Container(
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  checkboxTitle,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFF0D111B),
                    fontSize: 14,
                    fontFamily: 'Peyda',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  checkboxSubtitle,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFF707684),
                    fontSize: 12,
                    fontFamily: 'Peyda',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          Checkbox(
            value: isChecked,
            visualDensity: VisualDensity.compact,
            onChanged: (bool? value) {
              // Handle checkbox state change
            },
            activeColor: Color(0xFF335BFF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ],
      ),
    );
  }

}
