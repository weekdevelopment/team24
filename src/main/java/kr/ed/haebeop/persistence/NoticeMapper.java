package kr.ed.haebeop.persistence;

import kr.ed.haebeop.domain.Notice;
import kr.ed.haebeop.util.Page;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface NoticeMapper {
    public List<Notice> noticeList(Page page) throws Exception;
    public Notice noticeDetail(int no) throws Exception;
    public void visitCount(int no) throws Exception;
    public void noticeInsert(Notice domain) throws Exception;
    public void noticeDelete(int no) throws Exception;
    public void noticeEdit(Notice domain) throws Exception;
    public int totalCount(Page page) throws Exception;
}
