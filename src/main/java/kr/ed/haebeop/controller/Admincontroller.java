package kr.ed.haebeop.controller;

import kr.ed.haebeop.domain.Notice;
import kr.ed.haebeop.domain.Review;
import kr.ed.haebeop.domain.User;
import kr.ed.haebeop.persistence.UserMapper;
import kr.ed.haebeop.service.NoticeService;
import kr.ed.haebeop.service.ReviewService;
import kr.ed.haebeop.service.UserService;
import kr.ed.haebeop.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/admin/")
public class Admincontroller {
    @Autowired
    private UserService userService;

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String adminPage() throws Exception {
        return "/admin/adminPage";
    }

    @RequestMapping(value = "userList.do", method = RequestMethod.GET)
    public String userList(Model model) throws Exception {
        List<User> userList = userService.userList();
        model.addAttribute("userList", userList);
        System.out.println(userList);
        return "/admin/userList";
    }

    // 공지사항 관리자 페이지 연결

    @Autowired
    private NoticeService noticeService;

    @RequestMapping(value = "notice/list.do", method = RequestMethod.GET)
    public String getNoticeList(HttpServletRequest request, Model model) throws Exception {
        String type = request.getParameter("type");
        String keyword = request.getParameter("keyword");
        int curPage = request.getParameter("page") != null ? Integer.parseInt(request.getParameter("page")) : 1;

        Page page = new Page();
        page.setSearchType(type);
        page.setSearchKeyword(keyword);
        int total = noticeService.totalCount(page);

        page.makeBlock(curPage, total);
        page.makeLastPageNum(total);
        page.makePostStart(curPage, total);

        model.addAttribute("type", type);
        model.addAttribute("keyword", keyword);
        model.addAttribute("page", page);
        model.addAttribute("curPage", curPage);

        List<Notice> noticeList = noticeService.noticeList(page);
        model.addAttribute("noticeList", noticeList);

        return "admin/notice/noticeList";
    }


    // 후기 관리자 페이지 연결
    @Autowired
    private ReviewService reviewService;

    @RequestMapping(value = "review/list.do", method = RequestMethod.GET)
    public String getReviewList(HttpServletRequest request, Model model) throws Exception {
        String type = request.getParameter("type");
        String keyword = request.getParameter("keyword");
        int curPage = request.getParameter("page") != null ? Integer.parseInt(request.getParameter("page")) : 1;

        Page page = new Page();
        page.setSearchType(type);
        page.setSearchKeyword(keyword);
        int total = reviewService.totalCount(page);

        page.makeBlock(curPage, total);
        page.makeLastPageNum(total);
        page.makePostStart(curPage, total);

        model.addAttribute("type", type);
        model.addAttribute("keyword", keyword);
        model.addAttribute("page", page);
        model.addAttribute("curPage", curPage);

        List<Review> reviewList = reviewService.reviewList(page);
        model.addAttribute("reviewList", reviewList);

        return "admin/review/reviewList";
    }
}
