<!DOCTYPE html>
<html>
<head>
  <title>Formulário CRUD</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
  <div class="container">
    <h2>Formulário</h2>

    <!-- Formulário de criação -->
    <h3>Criar Categoria</h3>
    <form method="POST" action="http://localhost:5678/webhook/criar?entidade=categorias">
      <div class="form-group">
        <label for="nome">Nome:</label>
        <input type="text" class="form-control" id="nome" name="nome" required>
      </div>
      <button type="submit" class="btn btn-primary">Criar</button>
    </form>

    <br><br>

    <h3>Criar Produto</h3>
    <form method="POST" action="http://localhost:5678/webhook/criar?entidade=produtos">
      <div class="form-group">
        <label for="nome">Nome:</label>
        <input type="text" class="form-control" id="nome" name="nome" required>
        <label for="nome">Descrição:</label>
        <input type="text" class="form-control" id="descricao" name="descricao" required>
        <label for="nome">Preço:</label>
        <input type="number" class="form-control" id="preco" name="preco" required>
        <label for="nome">Categoria:</label>
        <input type="int" class="form-control" id="categoria" name="categoria" required>
        <label for="nome">Imagem (URL):</label>
        <input type="text" class="form-control" id="imagem" name="imagem" required>
        <label for="nome">Avaliacao:</label>
        <input type="number" class="form-control" id="avaliacao" name="avaliacao" required>
      </div>
      <button type="submit" class="btn btn-primary">Criar</button>
    </form>

    <br><br>

    <!-- Tabela de registros -->
    <h3>Produtos</h3>
    <table class="table">
      <thead>
        <tr>
          <th>ID</th>
          <th>Nome</th>
          <th>Descrição</th>
          <th>Preço</th>
          <th>Categoria</th>
          <th>Imagem</th>
          <th>Avalição</th>
          <th>Ações</th>
        </tr>
      </thead>
      <tbody>
        <?php
          // Obter os registros da API
          $apiUrl = 'http://localhost:5678/webhook/consultas?entidade=produtos'; // Substitua pela URL correta da sua API
          $json = file_get_contents($apiUrl);
          //$registros = json_decode($json.results, true);
          $registros = json_decode($json,true);

          foreach ($registros as $registro) {
            echo "<tr>";
            echo "<td>".$registro['json']['id']."</td>";
            echo "<td>".$registro['json']['nome']."</td>";
            echo "<td>".$registro['json']['descricao']."</td>";
            echo "<td>".$registro['json']['preco']."</td>";
            echo "<td>".$registro['json']['categoria']."</td>";
            //echo "<td>".$registro['json']['imagem']."</td>";
            echo "<td><img src='".$registro['json']['imagem']."' class='img-thumbnail rounded-circle' alt='Ícone' width='50' height='50'></td>";
            echo "<td>".$registro['json']['avaliacao']."</td>";
            echo "<td><a href='http://localhost:5678/webhook/deletar?entidade=produtos&id=".$registro['json']['id']."' class='btn btn-danger'>Excluir</a></td>";
            echo "</tr>";
          }
        ?>
      </tbody>
    </table>




    <!-- Tabela de Categorias -->
    <h3>Categorias</h3>
    <table class="table">
      <thead>
        <tr>
          <th>ID</th>
          <th>Nome</th>
          <th>Qtd produtos nessa categoria</th>
          <th>Ações</th>
        </tr>
      </thead>
      <tbody>
      <?php
          // Obter os registros da API
          $apiUrl = 'http://localhost:5678/webhook/consultas?entidade=categorias'; // Substitua pela URL correta da sua API
          $json = file_get_contents($apiUrl);
          $registros = json_decode($json,true);

          foreach ($registros as $registro) {
            echo "<tr>";
            echo "<td>".$registro['json']['id']."</td>";
            echo "<td>".$registro['json']['nome']."</td>";
            echo "<td>".$registro['json']['total_produtos']."</td>";
            echo "<td><a href='http://localhost:5678/webhook/deletar?entidade=categorias&id=".$registro['json']['id']."' class='btn btn-danger'>Excluir</a></td>";
            echo "</tr>";
          }
        ?>
      </tbody>
    </table>

    <br><br>

    <!-- Relatorios -->
    <h3>Gerar Relatorios - Produtos</h3>

    <form method="GET" action="http://localhost:5678/webhook/relatorios">
      <div class="form-group">

        <label for="nome">Filtro:</label>
        <select id="filtro" name="filtro">
            <option value="categoria">Categorias</option>
            <option value="avaliacao">Avalição</option>
        </select>
        <br>

        <label for="nome">Avalição:</label>
        <input type="number" class="form-control" id="avaliacao" name="avaliacao" required>

        
        <label for="nome">Categoria:</label>
        <?php
          // Obter os registros da API
          $apiUrl = 'http://localhost:5678/webhook/consultas?entidade=categorias'; // Substitua pela URL correta da sua API
          $json = file_get_contents($apiUrl);
          //$registros = json_decode($json.results, true);
          $registros = json_decode($json,true);
        
          echo "<select id='categoria' name='categoria'>";
          foreach ($registros as $registro) {
            echo "<option value=".$registro['json']['id'].">".$registro['json']['nome']."</option>";
          }
          echo "</select>";
        ?>
        <br>
        <label for="nome">Enviar para:</label>
        <br>
        <input type="checkbox" id="opcao1" name="opcoes[]" value="email">
        <label for="opcao1">E-mail</label><br>
        
      </div>
      <button type="submit" class="btn btn-primary">Gerar</button>
    </form>

    <br><br>
    <h3>Gerar Relatorios - Categorias</h3>

    <form method="GET" action="http://localhost:5678/webhook/relatorios-categorias">
      <div class="form-group">
        <br>
        <label for="nome">Enviar para:</label>
        <br>
        <input type="checkbox" id="opcao1" name="opcoes[]" value="email">
        <label for="opcao1">E-mail</label><br>
        
      </div>
      <button type="submit" class="btn btn-primary">Gerar</button>
    </form>



    <br><br>

    <!-- Edição/Criacao em massa por Planilha -->
    <h3>Criação/Edição em massa por planilha</h3>
    <form method="POST" action="http://localhost:5678/webhook/arquivo" enctype="multipart/form-data">
      <div class="form-group">
        
        <label for="nome">Entidade:</label>
        <select id="entidade" name="entidade">
            <option value="produtos">Produtos</option>
            <option value="categorias">Categorias</option>
        </select>
        
        <label for="nome">Arquivo:</label>
        <input type="file" id="arquivo" name="arquivo" accept="application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" required>
      </div>
      <button type="submit" class="btn btn-primary">Enviar</button>
    </form>

  </div>
</body>
</html>