#!/bin/sh

echo "Bem vindo ao criador de arquivos!"
echo "Esse script é um complemento do script vimproject"
echo "1)html 2)css 3)js 4)rs 5)java"
echo "Escolha o tipo do arquivo: "
read entrada

case $entrada in 

1) echo '<!DOCTYPE html>
<html lang = "pt-br">

<head>
  <meta charset = "utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Titulo</title>
 				 <!-- css -->
  <link rel="stylesheet" href="style.css">
  				<!-- javascript -->
  <script src="script.js"></script>
</head>
<body>

</body>
</html>' > index.html 
	;;
2)
	echo "*{
		margin:0;
		padding:0;
	}" > style.css ;;
3)	
	echo "console.log('hello world')" > script.js ;;

4) echo "fn main(){
	println!('hello world')
}" > main.rs ;;

5) echo 'public class App{
public static void main(String[] args){

        }
}' > ./src/App.java ;;
esac
