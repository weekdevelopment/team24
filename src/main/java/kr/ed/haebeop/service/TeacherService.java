package kr.ed.haebeop.service;

import kr.ed.haebeop.domain.Teacher;

import java.util.List;

public interface TeacherService {
    public List<Teacher> getTeacherList() throws Exception;
}
