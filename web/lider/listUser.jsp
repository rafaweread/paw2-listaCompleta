<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="model.UserBean"%>
<%@ page import="controller.UserDao"%>
<%@ page import="java.util.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>All User</title>
    </head>
    <body>
        <%
        //UserBean user = new UserBean();
            UserDao dao = new UserDao();
            List<UserBean> userList = dao.getAllUsers();
        //Iterator<UserBean> itr = userList.iterator();
        %>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Telephone</th>
                <th>Birthdate</th>
                <th>City</th>
                <th>State</th>
                <th>Date record</th>
                <th>Date reservation</th>
                <th>Daily quantity</th>
                <th>People quantity</th>
                
            </tr>
            <tr>
                <%
                    /*while(itr.hasNext())
                {
                System.out.println(user.getId());*/
                    for (UserBean user : userList) {
                %>
                <td><%=user.getId()%></td>
                <td><%=user.getfName()%></td>
                <td><%=user.getlName()%></td>
                <td><%=user.getTelephone()%></td>
                <td><%=user.getBirthDate()%></td>
                <td><%=user.getCity()%></td>
                <td><%=user.getState()%></td>
                <td><%=user.getDateRecord()%></td>
                <td><%=user.getDateReservation()%></td>
                <td><%=user.getDailyQuantity()%></td>
                <td><%=user.getPeapleQuantity()%></td>
                <td><a
                        href="UserHandler?action=editform&userId=<%=user.getId()%>">Update</a></td>
                <td><a
                        href="UserHandler?action=delete&userId=<%=user.getId()%>">Delete</a></td>
                <td>
                
            </tr>
            <%
                }
            //}
            %>
        </table>
        <p><a href="UserHandler?action=insert">Add User</a></p>
    </body>
</html>