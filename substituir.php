<?php
// Função recursiva para processar arquivos em subpastas
function processarArquivos($dir, $linha_antiga, $linha_nova, $extensoes) {
    if ($handle = opendir($dir)) {
        while (false !== ($file = readdir($handle))) {
            if ($file != "." && $file != "..") {
                $path = $dir . '/' . $file;
                if (is_dir($path)) {
                    // Se o item é uma pasta, chama a função recursivamente
                    processarArquivos($path, $linha_antiga, $linha_nova, $extensoes);
                } else {
                    // Se o item é um arquivo, verifica a extensão
                    $extensao = pathinfo($path, PATHINFO_EXTENSION);
                    if (in_array($extensao, $extensoes)) {
                        $conteudo = file_get_contents($path);
                        $conteudo = str_replace($linha_antiga, $linha_nova, $conteudo);
                        file_put_contents($path, $conteudo);
                        echo "Linha substituída em $path<br>";
                    }
                }
            }
        }
        closedir($handle);
    }
}

// Diretório inicial
$dir = '/caminho/para/sua/pasta';

// Linha que você deseja substituir
$linha_antiga = 'Linha antiga que deseja substituir';
$linha_nova = 'Nova linha que deseja inserir';

// Lista de extensões de arquivo que você deseja processar
$extensoes = array('html');

// Chama a função para processar os arquivos recursivamente
processarArquivos($dir, $linha_antiga, $linha_nova, $extensoes);
?>
