package kr.ed.haebeop.persistence;

import kr.ed.haebeop.domain.Course;
import kr.ed.haebeop.domain.Enroll;
import kr.ed.haebeop.domain.User;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface CourseMapper {
    public List<Course> getCourseList();
    public Course getCourse(int num);
    public void insertEnroll(Enroll enroll);
    public void updateStudentNum(int cno);
    public List<Enroll> getEnrollList(Enroll enroll);
    public void complete(int eno);
    public User getUserName(String id);
}
