#!/usr/bin/env sh

htmlproject (){
    read -p "Digite o nome do projeto: " projeto
    mkdir ./$projeto && cd ./$projeto
    > index.html
    cat <<INDEX >> index.html
<!DOCTYPE html>
<html lang = "pt-br">

<head>
  <meta charset = "utf-8">
  <title>Titulo</title>
</head>
<body>

</body>
</html>
INDEX
echo "Projeto criado com sucesso!"
}

javaproject (){
    read -p "Digite o nome do projeto: " nprojeto
    printf "\nO nome dado ao projeto foi: ${nprojeto}\n"

    mkdir $nprojeto
    cd ./$nprojeto
    mkdir bin lib src
    > ./src/App.java
    cat <<JAVA >> ./src/App.java
public class App{
public static void main(String[] args){
   
 }
}
JAVA
    > ./bin/App.class
    echo 'projeto criado, concluido com sucesso!'
}

cat <<EOF
Criador de projetos

1 - HTML
2 - Java
EOF
read -p "Escolha o tipo de projeto: " lang

case $lang in
    1) htmlproject ;;
    2) javaproject ;;
esac

