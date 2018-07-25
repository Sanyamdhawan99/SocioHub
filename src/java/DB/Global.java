package DB;

import java.sql.*;

public class Global {

    Connection con;
    Statement stmt;
    ResultSet rs;

    // constructor starts
    public Global() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost/dbSocial";
            con = DriverManager.getConnection(url, "root", "root");
            stmt = con.createStatement();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
    // helper functions

    public ResultSet execute(String s) throws Exception {
        rs = stmt.executeQuery(s);
        return rs;
    }

    public void update(String s) throws Exception {
        stmt.executeUpdate(s);
    }

    public int GetSno() throws Exception {
        String qry = "select ifnull(max(sno),0)max from tbfriend";
        rs = stmt.executeQuery(qry);  
        rs.next();
        int sno = rs.getInt("max");
        sno++;
        return sno;

    }
      public int GetSno2() throws Exception {
        String qry = "select ifnull(max(msgid),0)max from tbmsg";
        rs = stmt.executeQuery(qry);  
        rs.next();
        int sno = rs.getInt("max");
        sno++;
        return sno;

    }
       public int GetSno3() throws Exception {
        String qry = "select ifnull(max(groupid),0)max from tbgroup";
        rs = stmt.executeQuery(qry);  
        rs.next();
        int sno = rs.getInt("max");
        sno++;
        return sno;

    }
        public int GetSno4() throws Exception {
        String qry = "select ifnull(max(memberid),0)max from tbgroupmember";
        rs = stmt.executeQuery(qry);  
        rs.next();
        int sno = rs.getInt("max");
        sno++;
        return sno;

    }
          public int GetSno5() throws Exception {
        String qry = "select ifnull(max(topicid),0)max from tbtopic";
        rs = stmt.executeQuery(qry);  
        rs.next();
        int sno = rs.getInt("max");
        sno++;
        return sno;

    }
            public int GetSno6() throws Exception {
        String qry = "select ifnull(max(commentid),0)max from tbcomment";
        rs = stmt.executeQuery(qry);  
        rs.next();
        int sno = rs.getInt("max");
        sno++;
        return sno;

    }
}
