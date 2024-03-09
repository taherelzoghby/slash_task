
import 'package:flutter/material.dart';
import 'package:slash_task/core/consts/style.dart';

import 'custom_product_image.dart';

class SectionNameProduct extends StatelessWidget {
  const SectionNameProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: Text(
            'interns-Hijap-light',
            style: AppConsts.style17w600,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Expanded(
          child: Container(
            decoration: AppConsts.decorationCircleImage,
            child: CustomProductImage(
              image:
              'https://media.licdn.com/dms/image/D4D0BAQGb0kJhmbmWUQ/company-logo_200_200/0/1697913303367/slash_creators_logo?e=2147483647&v=beta&t=Jh3Z4mxxHkTHNTN9Ezn38qBp14QTB8knec_DDhUWMdI',
            ),
          ),
        ),
      ],
    );
  }
}
