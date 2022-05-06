import 'package:news_agency/providers/news_providers.dart';
import 'package:news_agency/widgets/new_item.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class NewsList extends StatelessWidget {
  Future<void> _refreshNews(BuildContext context) async {
    await context.read<NewsProvider>().fetchNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' News List '),
      ),
      body: FutureBuilder(
        future: _refreshNews(context),
        builder: (ctx, snapshot) =>
            snapshot.connectionState == ConnectionState.waiting
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : RefreshIndicator(
                    onRefresh: () => _refreshNews(context),
                    child: Consumer<NewsProvider>(
                      builder: (ctx, newsData, _) => Padding(
                        padding: EdgeInsets.all(8),
                        child: ListView.builder(
                          itemCount: newsData.items.length,
                          itemBuilder: (_, i) => Column(
                            children: [
                              NewItem(null, newsData.items[i]),
                              Divider(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
      ),
    );
  }
}
