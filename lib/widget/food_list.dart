import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_app/utils/colors.dart';
import 'package:food_app/utils/post_models.dart';
import 'package:food_app/utils/supabase.dart';
import 'package:supabase/supabase.dart';

Future<List<Post>> readData() async {
  final selectResponse = await SupabaseClient(
          SupabaseHandler.supabaseUrl, SupabaseHandler.supabaseKey)
      .from('product')
      .select()
      .order('name', ascending: true)
      .execute();
  if (selectResponse.error == null) {
    final parsed = selectResponse.data.cast<Map<String, dynamic>>();

    return parsed.map<Post>((json) => Post.fromMap(json)).toList();
  } else {
    throw Exception('Failed to load album');
  }
}

class FoodList extends StatefulWidget {
  FoodList({super.key});

  @override
  _FoodListState createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {
  late Future<List<Post>> futurePost;

  @override
  void initState() {
    super.initState();
    futurePost = readData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: FutureBuilder<List<Post>>(
        future: futurePost,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: snapshot.data!.length,
              itemBuilder: (_, index) => Container(
                decoration: const BoxDecoration(shape: BoxShape.rectangle),
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: MyColor.lightGreyColor,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(
                          "${snapshot.data![index].image}",
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "${snapshot.data![index].name}",
                        style: const TextStyle(
                          color: MyColor.blackColor,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "Harga : ${snapshot.data![index].price}",
                        style: const TextStyle(
                          color: MyColor.greyColor,
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
