import 'package:doctor_app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../bloc/search_list_bloc.dart';

class SearchListPage extends StatefulWidget {
  const SearchListPage({super.key});

  @override
  State<SearchListPage> createState() => _SearchListPageState();
}

class _SearchListPageState extends State<SearchListPage> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.close),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 16.0),
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(
                            color: AppTheme.foregroundStrongColor,
                            width: 2),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Row(
                        children: [
                          IconButton(onPressed: (){
                            context
                                .read<SearchListBloc>()
                                .add( SearchListSearchEvent(_searchController.text));
                          }, icon: Icon(Icons.search)),
                          Expanded(
                              child: TextField(
                                controller: _searchController,
                                decoration: InputDecoration(
                                  hintText: "جست و جو",
                                  fillColor: Colors.transparent,
                                  border: InputBorder.none,
                                  contentPadding:
                                  EdgeInsets.symmetric(horizontal: 8.0),
                                ),
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: BlocBuilder<SearchListBloc, SearchListState>(
                    builder: (context, state) {
                      if (state is SearchListLoaded) {
                        return Column(
                          children: [
                            Expanded(
                              child: ListView.builder(
                                itemCount: state.doctors.length,
                                itemBuilder: (context, index) {
                                  final doctor = state.doctors[index];
                                  return ListTile(
                                    leading: const CircleAvatar(
                                      backgroundImage:
                                          NetworkImage("https://picsum.photos/200"),
                                    ),
                                    title: Row(
                                      children: [
                                        Text(
                                          doctor.name,
                                          style: const TextStyle(
                                            fontFamily: 'Peyda',
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 16,
                                        ),
                                        Text(doctor.name,
                                            style: const TextStyle(
                                              fontFamily: 'Peyda',
                                              fontSize: 16,
                                              color: AppTheme.foregroundSoftColor,
                                              fontWeight: FontWeight.w600,
                                            ))
                                      ],
                                    ),
                                    subtitle: Row(
                                      children: [
                                        Text("4.6 ⭐ از 76 رای",
                                            style: TextStyle(
                                              fontFamily: 'Peyda',
                                              fontSize: 12,
                                              color: AppTheme.foregroundSoftColor,
                                              fontWeight: FontWeight.w600,
                                            )),
                                        SizedBox(
                                          width: 16,
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            // Note: Styles for TextSpans must be explicitly defined.
                                            // Child text spans will inherit styles from parent
                                            style: TextStyle(
                                              fontFamily: 'Peyda',
                                              fontSize: 12,
                                              color: AppTheme.foregroundStrongColor,
                                              fontWeight: FontWeight.w800,
                                            ),
                                            children: <TextSpan>[
                                              TextSpan(text: ' 256'),
                                              TextSpan(
                                                  text: '   جلسه مشاوره',
                                                  style: TextStyle(
                                                    fontFamily: 'Peyda',
                                                    fontSize: 12,
                                                    color:
                                                        AppTheme.foregroundSoftColor,
                                                    fontWeight: FontWeight.w400,
                                                  )),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    trailing: IconButton(
                                        icon: const Icon(Icons.chevron_right),
                                        onPressed: () {}),
                                    onTap: () {
                                      context.goNamed("reservation_info",pathParameters: {
                                        "name":doctor.name,
                                        "id": doctor.id.toString()
                                      });
                                    },
                                  );
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                onPressed: () {

                                },
                                child: Container(
                                  margin: EdgeInsets.all(16),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.arrow_back),
                                      Text('مشاهده همه (75 متخصص)',
                                          style: TextStyle(
                                            fontFamily: 'Peyda',
                                            fontSize: 16,
                                            color: AppTheme.foregroundStrongColor,
                                            fontWeight: FontWeight.w800,
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        );
                      } else if( state is SearchListLoading) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      } else return SizedBox();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
