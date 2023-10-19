package kr.ed.haebeop.controller;

import kr.ed.haebeop.domain.FileVO;
import kr.ed.haebeop.domain.User;
import kr.ed.haebeop.persistence.UserMapper;
import kr.ed.haebeop.service.FileService;
import kr.ed.haebeop.service.UserService;
import kr.ed.haebeop.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/admin/")
public class Admincontroller {
    @Autowired
    private UserService userService;

    @Autowired
    private FileService fileService;

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
