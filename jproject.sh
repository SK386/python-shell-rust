echo 'Criador de projetos'
echo ' '
echo 'Digite o nome do projeto: '
read nprojeto
echo ' '
echo 'O nome dado ao projeto foi:' $nprojeto

mkdir $nprojeto 
cd ./$nprojeto 
mkdir bin lib src

touch ./src/App.java
echo 'public class App{
public static void main(String[] args){

	}
}' > ./src/App.java

touch ./bin/App.class

echo 'projeto criado, concluido com sucesso!' 
