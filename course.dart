import 'courseLevel.dart';
import 'lesson.dart';

class Course {
    String id;
    String courseName;
    String instructor;
    List<Lesson> lessons;
    CourseLevel level;

    Course.create(this.courseName, this.instructor, this.lessons, this.level) : id = DateTime.now().toIso8601String();

    void printCourseInfo() {
        print('Course ID: $id\nCourse Name: $courseName\nInstructor: $instructor\nNumber of Lessons: ${lessons.length}\nLevel: ${level.name}');
        lessons.forEach((lesson) => lesson.printCourseInfo());
    }
}