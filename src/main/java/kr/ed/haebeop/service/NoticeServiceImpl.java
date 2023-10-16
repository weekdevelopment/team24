package kr.ed.haebeop.service;

import kr.ed.haebeop.domain.Notice;
import kr.ed.haebeop.persistence.NoticeMapper;
import kr.ed.haebeop.util.Page;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NoticeServiceImpl implements NoticeService {

    @Autowired
    private NoticeMapper noticeMapper;

    @Autowired
    private SqlSession sqlSession;

    @Override
    public List<Notice> noticeList(Page page) throws Exception {
        return noticeMapper.noticeList(page);
    }

    @Override
    public Notice noticeDetail(int no) throws Exception {
        noticeMapper.visitCount(no);
        return noticeMapper.noticeDetail(no);
    }

    @Override
    public void noticeInsert(Notice domain) throws Exception {
        noticeMapper.noticeInsert(domain);
    }

    @Override
    public void noticeDelete(int no) throws Exception {
        noticeMapper.noticeDelete(no);
    }

    @Override
    public void noticeEdit(Notice domain) throws Exception {
        noticeMapper.noticeEdit(domain);
    }

    @Override
    public int totalCount(Page page) throws Exception {
        return noticeMapper.totalCount(page);
    }
}
