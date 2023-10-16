package kr.ed.haebeop.util;

import lombok.Data;

@Data
public class Page {
    private int pageCount = 5;
    private int blockStartNum = 0;
    private int blockLastNum = 0;
    private int lastPageNum = 0;
    private int curPageNum = 1;
    private int postCount = 10;
    private int postStart;
    private int pageBlockNum = 1;
    private int totalBlockNum = 1;
    private int totalPageCount = 1;
    private String searchType = "";
    private String searchKeyword = "";

    // 전체 페이지 개수 구하는 메소드
    public void makePostStart(int curPage, int total){

        this.postStart = (curPage - 1) * this.postCount;
        this.pageBlockNum = (int)Math.floor(curPage / pageCount);

        int comp = pageCount * postCount;
        if( total % comp == 0 ) {
            this.totalBlockNum = (int)Math.floor(total/comp);
        } else {
            this.totalBlockNum = (int)Math.floor(total/comp) + 1;
        }
        if( total % postCount == 0 ){
            totalPageCount = (int)Math.floor(total/postCount);
        } else {
            totalPageCount = (int)Math.floor(total/postCount)+1;
        }
    }

    // block을 생성
    // 현재 페이지가 속한 block의 시작 번호, 끝 번호를 계산하는 메소드
    public void makeBlock(int curPage, int total){
        int blockNum = 0;

        blockNum = (int)Math.floor((curPage-1)/ pageCount);
        blockStartNum = (pageCount * blockNum) + 1;

        int comp = 0;
        if( total % postCount == 0 ){
            comp = (int)Math.floor(total/ postCount);
        } else {
            comp = (int)Math.floor(total/ postCount)+1;
        }
        blockLastNum = blockStartNum + (pageCount-1);
        if(blockLastNum >= comp){
            blockLastNum = comp;
        }
    }

    // 총 페이지의 마지막 번호 구하는 메소드
    public void makeLastPageNum(int total) {
        if( total % pageCount == 0 ) {
            lastPageNum = (int)Math.floor(total/pageCount);
        }
        else {
            lastPageNum = (int)Math.floor(total/pageCount) + 1;
        }
    }
}