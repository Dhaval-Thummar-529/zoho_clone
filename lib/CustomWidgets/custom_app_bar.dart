import 'package:flutter/material.dart';

class CustomDashBoardAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final String title;
  final bool showIcons;
  final bool showSearchIcon;
  final bool showNotificationIcon;
  final bool showFilterIcon;
  final bool showSettingsIcon;
  @override
  final Size preferredSize;

  const CustomDashBoardAppBar(this.title,
      {this.showSearchIcon = false,
      this.showNotificationIcon = false,
      this.showIcons = false,
      this.showFilterIcon = false,
      this.showSettingsIcon = false,
      super.key})
      : preferredSize = const Size.fromHeight(80.0);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: const Color.fromRGBO(220, 219, 219, 1.0),
        padding: const EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    "assets/images/zoho_clone_app_logo.png",
                    height: 60,
                    width: 60,
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 22, fontWeight: FontWeight.w700),
                )
              ],
            ),
            Row(
              children: [
                if (showIcons) ...[
                  if (showSearchIcon) ...[
                    const SizedBox(
                      width: 5,
                    ),
                    IconButton(
                      constraints: const BoxConstraints(),
                      splashRadius: 1,
                      splashColor: Colors.transparent,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                    )
                  ],
                  if (showNotificationIcon) ...[
                    const SizedBox(
                      width: 5,
                    ),
                    IconButton(
                      constraints: const BoxConstraints(),
                      splashRadius: 1,
                      splashColor: Colors.transparent,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notifications_none,
                        color: Colors.black,
                      ),
                    )
                  ],
                  if (showFilterIcon) ...[
                    const SizedBox(
                      width: 5,
                    ),
                    IconButton(
                      constraints: const BoxConstraints(),
                      splashRadius: 1,
                      splashColor: Colors.transparent,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.filter_alt_outlined,
                        color: Colors.black,
                      ),
                    )
                  ],
                  if (showSettingsIcon) ...[
                    const SizedBox(
                      width: 5,
                    ),
                    IconButton(
                      constraints: const BoxConstraints(),
                      splashRadius: 1,
                      splashColor: Colors.transparent,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.settings_outlined,
                        color: Colors.black,
                      ),
                    )
                  ],
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }
}
