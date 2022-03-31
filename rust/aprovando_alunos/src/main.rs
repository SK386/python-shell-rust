use std::io;

fn main() {
    // Nota da prova + Nota de atividade / 2
    let mut prova = String::new();
    let mut atividades = String::new();
    println!("Digite a nota do aluno na prova:");
    io::stdin()
        .read_line(&mut prova)
        .expect("Algo está errado.");
    let prova: u32 = prova.trim().parse().expect("Valor invalido!");
    println!("\nDigite a nota por atividades:");
    io::stdin()
        .read_line(&mut atividades)
        .expect("Algo está errado.");
    let atividades: u32 = atividades.trim().parse().expect("Valor invalido!");

    let media = prova + atividades / 2;

    if media < 7 {
        println!("\nA média do aluno foi {}\nele foi reprovado.", media, total)
    } else {
        println!("\nA média do aluno foi {}\nele passou!", media, total)
    }
}
