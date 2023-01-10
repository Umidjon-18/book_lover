import 'package:book_lover/config/constants/assets.dart';
import 'package:book_lover/data/models/author_model.dart';
import 'package:book_lover/data/models/book_model.dart';
import 'package:book_lover/data/models/collection_model.dart';

String loremIpsum =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Tortor consequat id porta nibh venenatis. Vitae congue mauris rhoncus aenean vel. Sagittis aliquam malesuada bibendum arcu vitae elementum curabitur vitae nunc. Cras fermentum odio eu feugiat pretium nibh. Nisl nunc mi ipsum faucibus vitae aliquet nec. Sagittis aliquam malesuada bibendum arcu vitae elementum curabitur.Tortor consequat id porta nibh venenatis.Vitae congue mauris rhoncus aenean vel. Sagittis aliquam malesuada bibendum arcu vitae elementum curabitur vitae nunc. Cras fermentum odio eu feugiat pretium nibh. Nisl nunc mi ipsum faucibus vitae aliquet nec. Sagittis aliquam malesuada bibendum arcu vitae elementum curabitur.";

String authorAbout =
    "Chu Hao Huy graduated with a master's degree in Science and Technology from Tsinghua University, is a writer specializing in the writing of detective novels, loved by the people for building the character police in the series. He has now published more than 10 novels, and many works have been made into films. Typical works: Notice of death, Evil hypnotherapist, Portraits of criminals ...";

List<BookModel> books = [
  BookModel(
    name: "My life as an ice cream sandwich",
    author: "J.R Rowling",
    category: "Action",
    image: Assets.images.book1,
    overview: loremIpsum,
    information: loremIpsum,
    review: loremIpsum,
  ),
  BookModel(
    name: "The Memo",
    author: "David Johnson",
    category: "Horror",
    image: Assets.images.book2,
    overview: loremIpsum,
    information: loremIpsum,
    review: loremIpsum,
  ),
  BookModel(
    name: "Sweat the technique",
    author: "David Thompson",
    category: "Action",
    image: Assets.images.book3,
    overview: loremIpsum,
    information: loremIpsum,
    review: loremIpsum,
  ),
  BookModel(
    name: "The proudest blue",
    author: "Martin Howard",
    category: "Adventure",
    image: Assets.images.book4,
    overview: loremIpsum,
    information: loremIpsum,
    review: loremIpsum,
  ),
  BookModel(
    name: "How long 'til Black Future Month",
    author: "Edward Park",
    category: "Horror",
    image: Assets.images.book5,
    overview: loremIpsum,
    information: loremIpsum,
    review: loremIpsum,
  ),
  BookModel(
    name: "Red at the bone",
    author: "Jerome King",
    category: "Adventure",
    image: Assets.images.book6,
    overview: loremIpsum,
    information: loremIpsum,
    review: loremIpsum,
  ),
  BookModel(
    name: "Talking to strangers",
    author: "Adib Khorram",
    category: "Horror",
    image: Assets.images.book7,
    overview: loremIpsum,
    information: loremIpsum,
    review: loremIpsum,
  ),
  BookModel(
    name: "Wild blues",
    author: "Adib Khorram",
    category: "Adventure",
    image: Assets.images.book8,
    overview: loremIpsum,
    information: loremIpsum,
    review: loremIpsum,
  ),
  BookModel(
    name: "Jay-Z",
    author: "Gosho Aoyama",
    category: "Adventure",
    image: Assets.images.book9,
    overview: loremIpsum,
    information: loremIpsum,
    review: loremIpsum,
  ),
  BookModel(
    name: "More to life",
    author: "Jerome King",
    category: "Adventure",
    image: Assets.images.book10,
    overview: loremIpsum,
    information: loremIpsum,
    review: loremIpsum,
  ),
  BookModel(
    name: "Everything inside: Stories",
    author: "Adib Khorram",
    category: "Horror",
    image: Assets.images.book11,
    overview: loremIpsum,
    information: loremIpsum,
    review: loremIpsum,
  ),
];

List<AuthorModel> authors = [
  AuthorModel(
    name: "Eddi Mike",
    about: authorAbout,
    image: Assets.images.author1,
    bookCount: 5,
    category: "Horror & detective author",
    dateOfBirth: "January 1st 1980",
    nationality: "Czech Republic",
  ),
  AuthorModel(
    name: "J.R King",
    about: authorAbout,
    image: Assets.images.author2,
    bookCount: 3,
    category: "Horror & detective author",
    dateOfBirth: "January 1st 1980",
    nationality: "Czech Republic",
  ),
  AuthorModel(
    name: "Gosho Aoyama",
    about: authorAbout,
    image: Assets.images.author3,
    bookCount: 7,
    category: "Horror & detective author",
    dateOfBirth: "January 1st 1980",
    nationality: "Czech Republic",
  ),
  AuthorModel(
    name: "Luther Kim Jr",
    about: authorAbout,
    image: Assets.images.author4,
    bookCount: 7,
    category: "Horror & detective author",
    dateOfBirth: "January 1st 1980",
    nationality: "Czech Republic",
  ),
  AuthorModel(
    name: "Anna Julia",
    about: authorAbout,
    image: Assets.images.author5,
    bookCount: 7,
    category: "Horror & detective author",
    dateOfBirth: "January 1st 1980",
    nationality: "Czech Republic",
  ),
  AuthorModel(
    name: "Alia Walker",
    about: authorAbout,
    image: Assets.images.author6,
    bookCount: 7,
    category: "Horror & detective author",
    dateOfBirth: "January 1st 1980",
    nationality: "Czech Republic",
  ),
  AuthorModel(
    name: "Gosho Aoyama",
    about: authorAbout,
    image: Assets.images.author7,
    bookCount: 7,
    category: "Horror & detective author",
    dateOfBirth: "January 1st 1980",
    nationality: "Czech Republic",
  ),
  AuthorModel(
    name: "Luther Kim Jr",
    about: authorAbout,
    image: Assets.images.author8,
    bookCount: 7,
    category: "Horror & detective author",
    dateOfBirth: "January 1st 1980",
    nationality: "Czech Republic",
  ),
  AuthorModel(
    name: "Anna Julia",
    about: authorAbout,
    image: Assets.images.author9,
    bookCount: 7,
    category: "Horror & detective author",
    dateOfBirth: "January 1st 1980",
    nationality: "Czech Republic",
  ),
];

List<CollectionModel> collections = [
  CollectionModel(collectionName: "My favorite", books: books.sublist(3, 9)),
  CollectionModel(collectionName: "UDG", books: books.sublist(7, 10)),
  CollectionModel(collectionName: "Horror", books: books.sublist(1)),
];

Map<String, String> shareItems = {
  "Facebook": Assets.images.shareFacebook,
  "Gmail": Assets.images.shareGmail,
  "Messenger": Assets.images.shareMessenger,
  "Copy Link": Assets.images.shareCopylink,
  "More": Assets.images.shareCopylink,
};

Map<String, String> notifications = {
  "You got a promotion code": "We've just sent you a coupon code.",
  "Gift card": "You was add 10 points for your transaction",
  "Purchase success": "You bought sucessfully a membership package: \$60 -3 months",
  "You got a message": "We've just sent you a support message",
  "You got a message ": "We've just sent you a support message",
};
