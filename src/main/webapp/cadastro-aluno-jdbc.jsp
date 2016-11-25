<!DOCTYPE html>
<%@page import="jdbc.Aluno"%>
<%@page import="java.util.List"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro de Aluno</title>
</head>
<body>
  <h1>Cadastro de Aluno</h1>
  <form name="cadastroAlunoJdbc" method="post">
  Matricula: <input type="text" name="matricula"><br>
  Nome: <input type="text" name="nome"><br>
  Curso: <input type="text" name="curso"><br>
  <br>
  <input type="submit" name="op" value="Salvar">
  <input type="submit" name="op" value="Excluir">
  <br>
  <br>
  
   <div class="container">
  <h2>Lista de Alunos</h2>
  <table class="table">
    <thead>
      <tr>
        <th>Matricula</th>
        <th>Nome</th>
        <th>Curso</th>
      </tr>
    </thead>
    <tbody>
      <%
    List<Aluno> alunos = (List<Aluno>) request.getAttribute("alunos");
    for (Aluno u:alunos) {
    %>
      <tr>
        <td><%=u.getMatricula()%></td>
        <td><%=u.getNome()%></td>
        <td><%=u.getCurso()%></td>
      </tr>
    <%
    }
    %>
    </tbody>
  </table>
</div>


</body>
</html>

