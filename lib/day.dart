import 'package:flutter/material.dart';

class Day {
  final String day;
  final List foods;
  Day(this.foods, this.day);
}

class WeeklyMenu{
  static var items = [
    MapEntry('Apples', Image.asset('assets/apples.jpeg')),
    MapEntry('Zucchini Carrot Breakfast Bread', Image.asset('assets/bread.jpeg')),
    MapEntry('Seasonal Fresh Fruits', Image.asset('assets/fruits.jpeg')),
    MapEntry('Hot Oatmeal', Image.asset('assets/oatmeal.jpeg')),
    MapEntry('Banana Muffin', Image.asset('assets/muffin.jpeg')),
    MapEntry('Buttermilk Pancakes', Image.asset('assets/pancakes.jpeg')),
    MapEntry('Turkey Sausage', Image.asset('assets/sausages.jpeg')),
    MapEntry('Blueberry Waffles', Image.asset('assets/waffles.jpeg')),
    MapEntry('Cream Cheese Bagel', Image.asset('assets/bagel.jpeg')),
    MapEntry('Yogurt', Image.asset('assets/yogurt.jpeg'))      
  ];
  static var menu = [
    Day([items[1], items[9], items[3], items[2]], 'Monday'),
    Day([items[7], items[2]], 'Tuesday'),
    Day([items[4], items[3], items[2]], 'Wednesday'),
    Day([items[5], items[6], items[3], items[0]], 'Thursday'),
    Day([items[8], items[2]], 'Friday')
  ];
}    


