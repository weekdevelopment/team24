package kr.ed.haebeop.persistence;

import kr.ed.haebeop.domain.Course;
import kr.ed.haebeop.domain.Enroll;
import kr.ed.haebeop.domain.User;
import kr.ed.haebeop.util.Page;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface CourseMapper {
    public List<Course> getCourseList(Page page);

    public List<Course> courseList();

    public Course getCourse(int cno);

    public void insertCourse(Course course);

    public void updateCourse(Course course);

    public void deleteCourse(int cno);

    public int countCourse(Page page);

    public void insertEnroll(Enroll enroll);

    public void updateStudentNum(int cno);

    public List<Enroll> getEnrollList(Enroll enroll);

    public void complete(int eno);

    public User getUserName(String id);

    public Enroll isEnroll(Enroll enroll);
    public List<Enroll> enrollList(Page page);
    public void enrollDelete(int eno);
    public int countEnroll(Page page);
    public void updateUserPt(User user);
}
