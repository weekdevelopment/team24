package kr.ed.haebeop.repository;

import kr.ed.haebeop.domain.FileBoard;
import kr.ed.haebeop.domain.FileDTO;
import kr.ed.haebeop.domain.FileVO;
import kr.ed.haebeop.util.Page;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

@Repository
public class FileRepositoryImpl implements FileRepository {
    @Autowired
    SqlSession sqlSession;

    //파일 자료실과 파일 테이블에 동시에 트랜잭션 처리 : 파일 자료 하나당 파일은 여러 개이므로
    @Transactional
    @Override
    public void insertFileboard(FileVO fileboard) throws Exception {
        FileBoard board = fileboard.getFileBoard();
        List<FileDTO> fileList = fileboard.getFileList();
        sqlSession.insert("fileboard.fileboardInsert", board);
        FileBoard latestBoard = sqlSession.selectOne("fileboard.latestFileboard");
        for(FileDTO file:fileList) {
            file.setPostNo(latestBoard.getPostNo());
            sqlSession.insert("fileboard.fileInsert", file);
        }
    }

    @Override
    public List<FileVO> getFileList(Page page) throws Exception {
        List<FileVO> fileboardList = new ArrayList<>();
        List<FileBoard> boardList = sqlSession.selectList("fileboard.fileboardList",page);
        for(int i=0;i<boardList.size();i++) {
            FileBoard board = boardList.get(i);
            List<FileDTO> fileList = sqlSession.selectList("fileboard.fileList", board.getPostNo());
            FileVO fileboard = new FileVO();
            fileboard.setFileBoard(board);
            fileboard.setFileList(fileList);
            fileboardList.add(fileboard);
        }
        return fileboardList;
    }

    //해당 파일 자료
    @Transactional
    @Override
    public List<FileDTO> getFileGroupList(int postNo) throws Exception {
        List<FileDTO> fileList = sqlSession.selectList("fileboard.fileGroupList", postNo);
        return fileList;
    }

    @Transactional
    @Override
    public FileVO getFilebord(int postNo) throws Exception {
        FileVO fileboard = new FileVO();
        sqlSession.update("fileboard.countUp", postNo);
        FileBoard board = sqlSession.selectOne("fileboard.fileboardDetail", postNo);
        List<FileDTO> fileList = sqlSession.selectList("fileboard.fileGroupList", postNo);
        fileboard.setFileBoard(board);
        fileboard.setFileList(fileList);
        return fileboard;
    }

    @Override
    public FileVO getFileObject(int no) throws Exception {
        return null;
    }

    @Transactional
    @Override
    public void removeFileboard(int postNo) throws Exception {
        sqlSession.delete("fileboard.fileboardDelete", postNo);
        sqlSession.delete("fileboard.fileDelete", postNo);
    }

//    @Transactional
//    @Override
//    public void editFileboard(FileVO fileboard) throws Exception {
//        // 파일 게시물의 정보를 수정하기 위해 FileVO 객체를 사용
//        FileBoard board = fileboard.getFileBoard();
//
//        // 파일 게시물 정보를 업데이트
//        sqlSession.update("fileboard.editFileboard", board);
//
//        // 파일 정보가 변경된 경우, 기존 파일 삭제 및 새 파일 업로드 처리
//        List<FileDTO> fileList = fileboard.getFileList();
//        if (fileList != null && !fileList.isEmpty()) {
//            int postNo = board.getPostNo();
//
//            // 기존 파일 삭제
//            sqlSession.delete("fileboard.fileDelete", postNo);
//
//            // 새 파일 업로드
//            for (FileDTO file : fileList) {
//                file.setPostNo(postNo);
//                sqlSession.insert("fileboard.fileInsert", file);
//            }
//        }
//    }
    @Override
    public void editFileboard(FileVO fileboard) throws Exception {
        FileBoard board = fileboard.getFileBoard();
        List<FileDTO> fileList = fileboard.getFileList();
        sqlSession.update("fileboard.fileboardEdit", board);
        for(FileDTO file:fileList) {
            sqlSession.update("fileboard.fileUpdate", file);
        }
    }


    @Override
    public void fileRemove(int no) throws Exception {
        sqlSession.delete("fileboard.fileObjDelete", no);
    }

    @Override
    public FileDTO getFile(int no) throws Exception {
        return sqlSession.selectOne("fileboard.fileDetail", no);
    }

    @Override
    public void removeAllFile(int postNo) throws Exception {
        sqlSession.delete("fileboard.fileDelete", postNo);
    }

    @Override
    public int totalCount(Page page) throws Exception {
        return sqlSession.selectOne("fileboard.totalCount", page);
    }


}