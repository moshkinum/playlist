import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:playlist/core/core.dart';
import 'package:playlist/data/data.dart';

import 'generated/l10n.dart';

List<Track> tracks = [
  Track(
      trackName: "Smells Like Teen Spirit",
      artistName: "Nirvana",
      trackTimeMillis: "5:01",
      artworkUrl100:
          "https://is5-ssl.mzstatic.com/image/thumb/Music115/v4/7b/58/c2/7b58c21a-2b51-2bb2-e59a-9bb9b96ad8c3/00602567924166.rgb.jpg/100x100bb.jpg"),
  Track(
      trackName: "Billie Jean",
      artistName: "Michael Jackson",
      trackTimeMillis: "4:35",
      artworkUrl100:
          "https://is5-ssl.mzstatic.com/image/thumb/Music125/v4/3d/9d/38/3d9d3811-71f0-3a0e-1ada-3004e56ff852/827969428726.jpg/100x100bb.jpg"),
  Track(
      trackName: "Stayin' Alive",
      artistName: "Bee Gees",
      trackTimeMillis: "4:10",
      artworkUrl100:
          "https://is4-ssl.mzstatic.com/image/thumb/Music115/v4/1f/80/1f/1f801fc1-8c0f-ea3e-d3e5-387c6619619e/16UMGIM86640.rgb.jpg/100x100bb.jpg"),
  Track(
      trackName: "Whole Lotta Love",
      artistName: "Led Zeppelin",
      trackTimeMillis: "5:33",
      artworkUrl100:
          "https://is2-ssl.mzstatic.com/image/thumb/Music62/v4/7e/17/e3/7e17e33f-2efa-2a36-e916-7f808576cf6b/mzm.fyigqcbs.jpg/100x100bb.jpg"),
  Track(
      trackName: "Sweet Child O'Mine",
      artistName: "Guns N' Roses",
      trackTimeMillis: "5:03",
      artworkUrl100:
          "https://is5-ssl.mzstatic.com/image/thumb/Music125/v4/a0/4d/c4/a04dc484-03cc-02aa-fa82-5334fcb4bc16/18UMGIM24878.rgb.jpg/100x100bb.jpg"),
];

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final _searchController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    debugPrint(
        "artworkUrl100" + Image.network(tracks[2].artworkUrl100).toString());

    return Scaffold(
      backgroundColor: context.color.white_grey900,
      appBar: AppBarComponent(title: S.of(context).search),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
            child: FieldSearchComponent(
              controller: _searchController,
              hintText: S.of(context).search,
              prefixIcon: Padding(
                padding: const EdgeInsets.only(left: 4),
                child: ImageIcon(
                  const AssetImage('assets/icons/ic_search_small.png'),
                  color: context.color.grey500_grey900!,
                ),
              ),
              suffixIcon: _searchController.text.isNotEmpty
                  ? Padding(
                      padding: const EdgeInsets.only(right: 4),
                      child: InkWell(
                        onTap: () {
                          _searchController.text = "";
                          FocusScope.of(context).unfocus();
                          // context.read<CatalogBloc>().add(
                          //       const CatalogEventSearch(
                          //         search: '',
                          //       ),
                          //     );
                        },
                        child: ImageIcon(
                          const AssetImage('assets/icons/ic_clear_search.png'),
                          color: context.color.grey500_grey900!,
                        ),
                      ),
                    )
                  : const SizedBox.shrink(),
              onChange: (_) {
                setState(() {});
              },
              // onChange: (_) => context.read<CatalogBloc>().add(
              //       CatalogEventSearch(
              //         search: _searchController.text.trim(),
              //       ),
              //     ),
            ),
          ),
          SizedBox(height: 24),
          Expanded(
            child: ListView.builder(
              itemCount: tracks.length,
              itemBuilder: (context, index) => SizedBox(
                height: 61,
                child: Padding(
                  padding: const EdgeInsets.only(left: 13, right: 12),
                  child: Row(
                    children: [
                      CachedNetworkImage(
                        width: 45,
                        height: 45,
                        imageUrl: tracks[index].artworkUrl100,
                        placeholder: (context, url) =>
                            Image.asset("assets/images/placeholder.png"),
                        errorWidget: (context, url, error) =>
                            Image.asset("assets/images/placeholder.png"),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    tracks[index].trackName,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: context.textStyleColor(
                                      context.textStyle.body1!,
                                      context.color.grey900_white!,
                                    ),
                                  ),
                                  Text(
                                    "${tracks[index].artistName} * ${tracks[index].trackTimeMillis}",
                                    style: context.textStyleColor(
                                      context.textStyle.body2!,
                                      context.color.grey500_white!,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Image.asset(
                              "assets/icons/ic_chevron.png",
                              color: context.color.grey500_white,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
