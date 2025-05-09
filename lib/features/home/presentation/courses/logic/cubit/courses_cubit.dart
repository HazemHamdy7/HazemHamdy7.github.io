import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_prtofolio/features/home/presentation/courses/logic/cubit/courses_state.dart';
import 'package:my_prtofolio/features/home/presentation/courses/model/course.dart';

class CoursesCubit extends Cubit<CoursesState> {
  CoursesCubit() : super(CoursesInitial());

  Future<void> fetchCourses() async {
    try {
      emit(CoursesLoading());
      final querySnapshot =
          await FirebaseFirestore.instance.collection('courses').get();
      final courses =
          querySnapshot.docs.map((doc) => Course.fromJson(doc.data())).toList();
      emit(CoursesLoaded(courses: courses));
    } catch (e) {
      emit(CoursesError(message: e.toString()));
    }
  }
}
