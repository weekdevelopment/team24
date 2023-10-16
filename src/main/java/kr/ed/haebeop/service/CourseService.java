package kr.ed.haebeop.service;

import kr.ed.haebeop.domain.Course;
import kr.ed.haebeop.domain.Enroll;
import kr.ed.haebeop.domain.User;

import java.util.List;

public interface CourseService {
    public List<Course> getCourseList();
    public Course getCourse(int num);
    public void insertEnroll (Enroll enroll);
    public void updateStudentNum(int cno);
    public List<Enroll> getEnrollList(Enroll enroll);
    public void complete(int eno);
    public User getUserName(String id);
}
