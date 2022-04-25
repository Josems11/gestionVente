    <%@page import="java.sql.*"%>
    <jsp:useBean id="gestuser" class="gestion.Gestion_utilisateur"/>
          <% 
           ResultSet rs;
           try{
               String cod=request.getParameter("code");
               rs=gestuser.getDetail(cod);
            while(rs.next()){
                %>
                 <input type="hidden" name="nm" id="nm"value="<%=rs.getString("nom")%>"/>
                 <input type="hidden" name="pren" id="pren" value="<%=rs.getString("prenom")%>"/>
                 <input type="hidden" name="tl" id="tl" value="<%=rs.getString("tel")%>"/>
                 <input type="hidden" name="ad" id="ad" value="<%=rs.getString("adresse")%>"/>
                <%   
                }
           }catch(Exception e){
                %>
                    <input type="hidden" name="nbr" class="form-control"/>
                <%}%>