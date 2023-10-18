package kr.ed.haebeop.service;

import kr.ed.haebeop.domain.Course;
import kr.ed.haebeop.domain.Enroll;
import kr.ed.haebeop.domain.User;
import kr.ed.haebeop.persistence.CourseMapper;
import kr.ed.haebeop.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CourseServiceImpl implements CourseService {
    @Autowired
    private CourseMapper courseMapper;

    @Override
    public List<Course> getCourseList(Page page) throws Exception {
        return courseMapper.getCourseList(page);
    }

    @Override
    public Course getCourse(int cno) throws Exception {
        return courseMapper.getCourse(cno);
    }

    @Override
    public void insertCourse(Course course) throws Exception {
        courseMapper.insertCourse(course);
    }

    @Override
    public void updateCourse(Course course) throws Exception {
        courseMapper.updateCourse(course);
    }

    @Override
    public void deleteCourse(int cno) throws Exception {
        courseMapper.deleteCourse(cno);
    }

    @Override
    public int countCourse(Page page) throws Exception {
        return courseMapper.countCourse(page);
    }

    @Override
    public void insertEnroll(Enroll enroll) {
        courseMapper.insertEnroll(enroll);
    }

    @Override
    public void updateStudentNum(int cno) {
        courseMapper.updateStudentNum(cno);
    }

    @Override
    public List<Enroll> getEnrollList(Enroll enroll) {
        return courseMapper.getEnrollList(enroll);
    }

    @Override
    public void complete(int eno) {
        courseMapper.complete(eno);
    }

    @Override
    public User getUserName(String id) {
        return courseMapper.getUserName(id);
    }

    @Override
    public Enroll isEnroll(Enroll enroll) {
        return courseMapper.isEnroll(enroll);
    }

    @Override
    public List<Enroll> enrollList(Page page) { return courseMapper.enrollList(page); }

    @Override
    public void enrollDelete(int eno) {
        courseMapper.enrollDelete(eno);
    }

    @Override
    public int countEnroll(Page page) {
        return courseMapper.countEnroll(page);
    }
}
