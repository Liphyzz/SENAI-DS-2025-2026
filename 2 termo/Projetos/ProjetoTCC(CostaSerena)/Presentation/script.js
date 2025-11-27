function mostrarSecao(idSecao, event) {
    event.preventDefault();

    // Oculta todas as seções
    document.querySelectorAll('.relative').forEach(secao => {
        secao.style.display = 'none';
    });

    // Mostra apenas a seção clicada
    const secaoAlvo = document.getElementById(idSecao);
    if (secaoAlvo) {
        secaoAlvo.style.display = 'block';
    }

    // Remove a classe active de TODOS os links
    document.querySelectorAll('.barra-lateral nav ul li a').forEach(link => {
        link.classList.remove('active');
    });

    // Adiciona active ao link clicado
    event.target.classList.add('active');
}