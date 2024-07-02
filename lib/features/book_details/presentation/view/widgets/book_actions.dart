import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/book_price.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BookActions extends StatelessWidget {
  const BookActions({
    super.key,
    required this.previewUrl,
  });
  final String previewUrl;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 38.0, right: 38.0, top: 38.0),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: 48.0,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.0),
                      bottomLeft: Radius.circular(16.0),
                    ),
                  ),
                ),
                child: const BookPrice(
                  textColor: Colors.black,
                ),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 48.0,
              child: TextButton(
                  onPressed: () {
                    _launchUrl();
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xffEF8262),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(16.0),
                        bottomRight: Radius.circular(16.0),
                      ),
                    ),
                  ),
                  child: Text(
                    'Free Preview',
                    style: TextStyles.textStyle16.copyWith(color: Colors.white),
                  )),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _launchUrl() async {
    
    Uri uri = Uri.parse(previewUrl);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $uri');
    }
  }
}
