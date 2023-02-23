import 'package:flutter/material.dart';

class Tile {
  final String category;
  final String title;
  final Icon tileIcon;
  bool isfavorite;

  Tile({
    required this.tileIcon,
    required this.title,
    this.isfavorite = false,
    required this.category,
  });
}

List<Tile> _gridTiles = [
  Tile(
    tileIcon: const Icon(Icons.diamond_sharp),
    title: 'Rewards & Referral',
    category: 'constant',
  ),
  Tile(
    tileIcon: const Icon(Icons.mark_email_read_outlined),
    title: 'Generate Statement',
    category: 'Account',
  ),
  Tile(
    tileIcon: const Icon(Icons.check_outlined),
    title: 'Link BVN',
    category: 'Account',
  ),
  Tile(
    tileIcon: const Icon(Icons.battery_saver_outlined),
    title: 'Link BVN',
    category: 'Account',
  ),
  Tile(
    tileIcon: const Icon(Icons.history),
    title: 'Transaction History',
    category: 'Account',
  ),
  Tile(
    tileIcon: const Icon(Icons.history),
    title: 'Transaction History',
    category: 'Account',
  ),
  Tile(
    tileIcon: const Icon(Icons.history),
    title: 'Transaction History',
    category: 'Account',
  ),
  Tile(
    tileIcon: const Icon(Icons.history),
    title: 'Transaction History',
    category: 'Account',
  ),
  Tile(
    tileIcon: const Icon(Icons.history),
    title: 'Transaction History',
    category: 'Account',
  ),
  Tile(
    tileIcon: const Icon(Icons.history),
    title: 'Transaction History',
    category: 'Account',
  ),
  Tile(
    tileIcon: const Icon(Icons.history),
    title: 'Transaction History',
    category: 'Account',
  ),
];

List<Tile> get gridTiles {
  return [..._gridTiles];
}
