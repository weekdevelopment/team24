package kr.ed.haebeop.service;

import kr.ed.haebeop.domain.User;
import kr.ed.haebeop.util.Page;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface UserService {
    public List<User> userList(Page page);
    public int userCount(Page page);
    public User getUser(String id);
    public User signIn(User mdto);
    public User loginCheck(User mdto);
    public boolean logIn(HttpServletRequest request) throws Exception;
    public void userInsert(User mdto);
    public void userUpdate(User mdto);
    public void userDelete(String id);
}
