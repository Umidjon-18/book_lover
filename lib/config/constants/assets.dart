abstract class Assets {
  const Assets._();

  // ignore: library_private_types_in_public_api
  static _Icons get icons => const _Icons();

  // ignore: library_private_types_in_public_api
  static _Images get images => const _Images();

  // ignore: library_private_types_in_public_api
  static _Videos get videos => const _Videos();
}

abstract class _AssetsHolder {
  final String basePath;

  const _AssetsHolder(this.basePath);
}

class _Icons extends _AssetsHolder {
  const _Icons() : super('assets/icons');

  String get logo => "$basePath/ic_logo.svg";

  String get search => "$basePath/ic_search.svg";

  String get more => "$basePath/ic_more.svg";

  String get menu => "$basePath/ic_menu.svg";

  String get check => "$basePath/ic_check.svg";

  String get facebook => "$basePath/ic_facebook.svg";

  String get twitter => "$basePath/ic_twitter.svg";

  String get google => "$basePath/ic_google.svg";

  String get home => "$basePath/ic_home.svg";

  String get inbox => "$basePath/ic_inbox.svg";

  String get plus => "$basePath/ic_plus.svg";

  String get save => "$basePath/ic_save.svg";

  String get settings => "$basePath/ic_settings.svg";

  String get share => "$basePath/ic_share.svg";

  String get trending => "$basePath/ic_trending.svg";
  
  String get arrowLeft => "$basePath/ic_arrow_left.svg";
  
  String get close => "$basePath/ic_close.svg";
  
  String get delete => "$basePath/ic_delete.svg";
  
  String get detailLeading => "$basePath/ic_detail_leading.svg";
  
  String get favorite => "$basePath/ic_favorite.svg";
  
  String get finderList => "$basePath/ic_finder_list.svg";
  
  String get pencil => "$basePath/ic_pencil.svg";
}

class _Images extends _AssetsHolder {
  const _Images() : super('assets/images');

  String get book1 => "$basePath/book1.png";

  String get book2 => "$basePath/book2.png";

  String get banner => "$basePath/banner.png";

  String get author1 => "$basePath/author1.png";

  String get buyBook => "$basePath/buybook.png";
  
  String get membership => "$basePath/membership.png";
  
  String get newProduct => "$basePath/new_product.png";
  
  String get shareGmail => "$basePath/share_gmail.png";
  
  String get shareCopylink => "$basePath/share_copylink.png";
  
  String get shareFacebook => "$basePath/share_facebook.png";
  
  String get shareMessenger => "$basePath/share_messenger.png";
}

class _Videos extends _AssetsHolder {
  const _Videos() : super('assets/videos');
}
