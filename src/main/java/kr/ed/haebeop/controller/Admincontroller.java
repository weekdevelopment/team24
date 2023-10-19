package kr.ed.haebeop.controller;

import kr.ed.haebeop.domain.FileVO;
import kr.ed.haebeop.domain.User;
import kr.ed.haebeop.domain.*;
import kr.ed.haebeop.persistence.UserMapper;
import kr.ed.haebeop.service.FileService;
import kr.ed.haebeop.service.UserService;
import kr.ed.haebeop.util.Page;
import kr.ed.haebeop.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/admin/")
public class Admincontroller {
    @Autowired
    private UserService userService;

    BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String adminPage(Model model) throws Exception {
        Page page = new Page();
        int totUser = userService.userCount(page);
        model.addAttribute("totUser", totUser);
        return "/admin/adminPage";
    }

    @RequestMapping(value = "userList.do", method = RequestMethod.GET)
    public String userList(HttpServletRequest request, Model model) throws Exception {
        String type = request.getParameter("type");
        String keyword = request.getParameter("keyword");
        int curPage = request.getParameter("page") != null ? Integer.parseInt(request.getParameter("page")) : 1;

        Page page = new Page();
        page.setSearchType(type);
        page.setSearchKeyword(keyword);
        int total = userService.userCount(page);
        page.makeBlock(curPage, total);
        page.makeLastPageNum(total);
        page.makePostStart(curPage, total);
        model.addAttribute("type", type);
        model.addAttribute("keyword", keyword);
        model.addAttribute("curpage", curPage);

        List<User> userList = userService.userList(page);
        model.addAttribute("userList", userList);
        System.out.println(userList);
        return "/admin/userList";
    }

    @RequestMapping(value = "userDelete.do", method = RequestMethod.GET)
    public String userDelete(@RequestParam String id, Model model, HttpSession session) throws Exception {
        userService.userDelete(id);
        session.invalidate();
        return "redirect:/admin/userList.do";
    }

    @RequestMapping(value = "aGetUser", method = RequestMethod.GET)
    public String aGetUser(Model model, HttpServletRequest request) throws Exception {
//      String id = (String) request.getParameter("sid"); 테스트용
        String id = request.getParameter("id");
        User user = userService.getUser(id);
        model.addAttribute("user", user);
        return "/admin/editUser";
    }

    @RequestMapping(value = "userUpdate.do", method = RequestMethod.POST)
    public String userUpdate(User user, Model model) throws Exception {
        String pwd = "";
        if (user.getPw().length() <= 16) {
            pwd = passwordEncoder.encode(user.getPw());
            user.setPw(pwd);
        }
        userService.userUpdate(user);
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

    // 시범 강의 관리자 페이지 연결
    @Autowired
    private VideoService videoService;

    @RequestMapping(value = "video/list.do", method = RequestMethod.GET)
    public String getVideoList(HttpServletRequest request, Model model) throws Exception {
        String type = request.getParameter("type");
        String keyword = request.getParameter("keyword");
        int curPage = request.getParameter("page") != null ? Integer.parseInt(request.getParameter("page")) : 1;

        Page page = new Page();
        page.setSearchType(type);
        page.setSearchKeyword(keyword);
        int total = videoService.totalCount(page);

        page.makeBlock(curPage, total);
        page.makeLastPageNum(total);
        page.makePostStart(curPage, total);

        model.addAttribute("type", type);
        model.addAttribute("keyword", keyword);
        model.addAttribute("page", page);
        model.addAttribute("curPage", curPage);

        List<Video> videoList = videoService.videoList(page);
        model.addAttribute("videoList", videoList);

        return "admin/video/videoList";
    }

    //수강생 관리
    @Autowired
    private CourseService courseService;

    //관리자페이지 수강 관리
    @RequestMapping(value = "enrollList", method = RequestMethod.GET)
    public String admonEnroll(HttpServletRequest request, Model model) {
        String type = request.getParameter("type");
        String keyword = request.getParameter("keyword");
        int curPage = request.getParameter("page") != null ? Integer.parseInt(request.getParameter("page")) : 1;

        Page page = new Page();
        page.setSearchType(type);
        page.setSearchKeyword(keyword);
        int total = courseService.countEnroll(page);

        page.makeBlock(curPage, total);
        page.makeLastPageNum(total);
        page.makePostStart(curPage, total);

        model.addAttribute("type", type);
        model.addAttribute("keyword", keyword);
        model.addAttribute("page", page);
        model.addAttribute("curPage", curPage);

        List<Enroll> enrollList = courseService.enrollList(page);
        model.addAttribute("enrollList", enrollList);

        return "/admin/EnrollList";
    }

    //수강생 삭제
    @RequestMapping(value = "enrollDelete", method = RequestMethod.GET)
    public String enrollDelete(@RequestParam int eno) throws Exception {
        courseService.enrollDelete(eno);
        return "redirect:/admin/EnrollList";
    }

    @GetMapping("courseList")
    public String getCourseList(HttpServletRequest request, Model model) throws Exception {
        String type = request.getParameter("type");
        String keyword = request.getParameter("keyword");
        int curPage = request.getParameter("page") != null ? Integer.parseInt(request.getParameter("page")) : 1;

        Page page = new Page();
        page.setSearchType(type);
        page.setSearchKeyword(keyword);
        int total = courseService.countCourse(page);

        page.makeBlock(curPage, total);
        page.makeLastPageNum(total);
        page.makePostStart(curPage, total);

        model.addAttribute("type", type);
        model.addAttribute("keyword", keyword);
        model.addAttribute("page", page);
        model.addAttribute("curPage", curPage);

        List<Course> courseList = courseService.getCourseList(page);
        model.addAttribute("courseList", courseList);
        return "admin/courseList";
    }

    @GetMapping("courseDelete")
    public String deleteCourse(HttpServletRequest request, Model model) throws Exception {
        int cno = Integer.parseInt(request.getParameter("cno"));
        courseService.deleteCourse(cno);
        return "redirect:/admin/courseList";
    }


    @Autowired
    private FileService fileService;

    @RequestMapping(value = "fileList.do", method = RequestMethod.GET)
    public String getFileList(HttpServletRequest request, Model model) throws Exception {
        String type = request.getParameter("type");
        String keyword = request.getParameter("keyword");
        int curPage = request.getParameter("page") != null ? Integer.parseInt(request.getParameter("page")) : 1;

        Page page = new Page();
        page.setSearchType(type);
        page.setSearchKeyword(keyword);
        int total = fileService.totalCount(page);

        page.makeBlock(curPage, total);
        page.makeLastPageNum(total);
        page.makePostStart(curPage, total);

        model.addAttribute("type", type);
        model.addAttribute("keyword", keyword);
        model.addAttribute("page", page);
        model.addAttribute("curPage", curPage);


        List<FileVO> fileboardList = fileService.getFileList(page);
        model.addAttribute("fileboardList", fileboardList);
        return "/admin/file/fileList";
    }

    //getFileboard.do
    @GetMapping("getFileboard.do")
    public String getFileboard(@RequestParam int postNo, Model model) throws Exception {
        FileVO fileboard = fileService.getFilebord(postNo);
        model.addAttribute("fileboard", fileboard);
        return "/admin/file/getFileboard";
    }


}
