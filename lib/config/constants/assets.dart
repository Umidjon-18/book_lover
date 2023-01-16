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

  String get arrowRight => "$basePath/ic_arrow_right.svg";
  
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
  
  String get book3 => "$basePath/book3.png";
  
  String get book4 => "$basePath/book4.png";
  
  String get book5 => "$basePath/book5.png";
  
  String get book6 => "$basePath/book6.png";
  
  String get book7 => "$basePath/book7.png";
  
  String get book8 => "$basePath/book8.png";
  
  String get book9 => "$basePath/book9.png";
  
  String get book10 => "$basePath/book10.png";
  
  String get book11 => "$basePath/book11.png";

  String get banner => "$basePath/banner.png";

  String get author1 => "$basePath/author1.png";
  
  String get author2 => "$basePath/author2.png";
  
  String get author3 => "$basePath/author3.png";
  
  String get author4 => "$basePath/author4.png";
  
  String get author5 => "$basePath/author5.png";
  
  String get author6 => "$basePath/author6.png";
  
  String get author7 => "$basePath/author7.png";
  
  String get author8 => "$basePath/author8.png";
  
  String get author9 => "$basePath/author9.png";

  String get buyBook => "$basePath/buybook.png";
  
  String get membership => "$basePath/membership.png";
  
  String get newProduct => "$basePath/new_product.png";
  
  String get shareGmail => "$basePath/share_gmail.png";
  
  String get shareCopylink => "$basePath/share_copylink.png";
  
  String get shareFacebook => "$basePath/share_facebook.png";
  
  String get shareMessenger => "$basePath/share_messenger.png";

  String get notFoundLottie => "$basePath/not_found.json";
}

class _Videos extends _AssetsHolder {
  const _Videos() : super('assets/videos');
}
