import 'package:flutter/material.dart';

import '../../../../../domain/entities/user/user.dart';

class HeaderWidget extends StatelessWidget {
  final User user;
  final VoidCallback onLogout;

  const HeaderWidget({Key key, @required this.user, this.onLogout})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        child: ListTile(
          onTap: () {},
          contentPadding: const EdgeInsets.all(0),
          leading: Icon(
            Icons.account_circle,
            size: 60,
            color: Colors.white,
          ),
          title: Text(
            '${user.firstName} ${user.lastName}',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          subtitle: Text(
            user.email,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.grey[300],
            ),
          ),
          trailing: IconButton(
            onPressed: onLogout,
            tooltip: 'Logout',
            color: Colors.white,
            icon: Icon(Icons.login),
          ),
        ),
      );
}
