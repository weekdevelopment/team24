package kr.ed.haebeop.service;

import kr.ed.haebeop.domain.Teacher;
import kr.ed.haebeop.persistence.TeacherMapper;
import kr.ed.haebeop.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TeacherServiceImpl implements TeacherService {

    @Autowired
    private TeacherMapper teacherMapper;

    @Override
    public List<Teacher> getTeacherList(Page page) {
        return teacherMapper.getTeacherList(page);
    }

    @Override
    public List<Teacher> teacherList() {
        return teacherMapper.teacherList();
    }

    @Override
    public Teacher getTeacher(String tid) {
        return teacherMapper.getTeacher(tid);
    }

    @Override
    public int countTeacher(Page page) {
        return teacherMapper.countTeacher(page);
    }

    @Override
    public void insertTeacher() {
        teacherMapper.insertTeacher();
    }
}
