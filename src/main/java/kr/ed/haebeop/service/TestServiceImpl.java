package kr.ed.haebeop.service;

import kr.ed.haebeop.domain.Test;
import kr.ed.haebeop.persistence.TestMapper;
import kr.ed.haebeop.persistence.TestMapper2;
import kr.ed.haebeop.repository.TestRepository;
import lombok.Setter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TestServiceImpl implements TestService {

    @Autowired
    private TestRepository testRepository;

    @Autowired
    private TestMapper testMapper;

    @Autowired
    private TestMapper2 testMapper2;

    @Override
    public List<Test> getTestList(){
        return testRepository.getTestList();
    }

    @Override
    public List<Test> getTestList2() {
        return testMapper.getTestList2();
    }

    @Override
    public List<Test> getTestList3() {
        return testMapper2.getTestList3();
    }

    @Override
    public Test getTest(int num) {
        return testRepository.getTest(num);
    }

    @Override
    public Test getTest2(int num) {
        return testMapper.getTest2(num);
    }

    @Override
    public Test getTest3(int num) {
        return testMapper2.getTest3(num);
    }

    @Override
    public void insert(Test test) {
        testRepository.insert(test);
    }

    @Override
    public void insert2(Test test) {
        testMapper.insert2(test);
    }

    @Override
    public void insert3(Test test) {
        testMapper2.insert3(test);
    }

    @Override
    public void update(Test test) {
        testRepository.update(test);
    }

    @Override
    public void update2(Test test) {
        testMapper.update2(test);
    }

    @Override
    public void update3(Test test) {
        testMapper2.update3(test);
    }

    @Override
    public void delete(int num) {
        testRepository.delete(num);
    }

    @Override
    public void delete2(int num) {
        testMapper.delete2(num);
    }

    @Override
    public void delete3(int num) {
        testMapper2.delete3(num);
    }
}
