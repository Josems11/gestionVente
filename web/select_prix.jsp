    <%@page import="java.sql.*"%>
    <jsp:useBean id="gestqtt" class="gestion.Gestion_produit"/>
          <% 
           ResultSet rs;
           try{
               String cod=request.getParameter("code");
               rs=gestqtt.getRefProd(cod);
            while(rs.next()){
          %>
                <input type="hidden" name="pri" id="pri" class="form-control" value="<%=rs.getString("prix")%>"/>
                <input type="hidden" name="quantit" id="quantit" class="form-control" value="<%=rs.getString("quantite")%>"/>
                <input type="hidden" name="oper" id="oper" class="form-control" value="<%=rs.getString("design_prod")%>"/>
            <%   
                }
           }catch(Exception e){
           %>
            <input type="hidden" name="nbr" class="form-control"/>
           <%}%>