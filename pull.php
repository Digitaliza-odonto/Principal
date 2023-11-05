<?php
$destPath = 'master'; // Substitua pelo caminho da pasta no servidor
$zipUrl = 'https://github.com/UFPEL-gestao-saude/Unificado/archive/master.zip';
$origem = 'master/Unificado-main';

$zipFilename = "$destPath/repo.zip";

// Lista de exceções (pastas ou arquivos que não devem ser excluídos)
$excecoes = array('master', 'pull.php');

// Pasta onde o script está localizado
$pastaAtual = dirname(__FILE__);

// Função para excluir arquivos e pastas recursivamente, com exceções
function excluirRecursivamente($diretorio, $excecoes) {
    $itens = scandir($diretorio);

    foreach ($itens as $item) {
        if ($item != '.' && $item != '..') {
            $caminhoItem = $diretorio . '/' . $item;

            if (in_array($item, $excecoes)) {
                continue; // Ignorar exceções
            }

            if (is_dir($caminhoItem)) {
                excluirRecursivamente($caminhoItem, $excecoes);
                rmdir($caminhoItem);
            } else {
                unlink($caminhoItem);
            }
        }
    }
}

// Chama a função para excluir os arquivos e pastas recursivamente
excluirRecursivamente($pastaAtual, $excecoes);

echo 'Todos os arquivos e pastas foram excluídos, exceto as exceções.<br>';


// Função para limpar a pasta
function limparPasta($destPath) {
    $files = glob("$destPath/*");
    foreach ($files as $file) {
        if (is_file($file)) {
            unlink($file);
        } elseif (is_dir($file)) {
            limparPasta($file); // Recursivamente limpa subpastas
            rmdir($file); // Remove a subpasta vazia
        }
    }
}


// Limpa a pasta antes de continuar
limparPasta($destPath);

$ch = curl_init($zipUrl);
$fp = fopen($zipFilename, 'wb');
curl_setopt($ch, CURLOPT_FILE, $fp);
curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
curl_exec($ch);
curl_close($ch);
fclose($fp);

// Extrai o arquivo ZIP para a pasta de destino
$zip = new ZipArchive;
if ($zip->open($zipFilename) === TRUE) {
    $zip->extractTo($destPath);
    $zip->close();


    // Remove o arquivo ZIP após a extração
    unlink($zipFilename);

    echo "Repositório baixado e arquivos extraidos com sucesso!<br>";
} else {
    echo "Erro ao extrair o arquivo ZIP.";
}

// Pasta de destino (a mesma pasta onde o script está localizado)
$destino = dirname(__FILE__);

// Função para copiar recursivamente os arquivos e pastas
function copiarRecursivamente($origem, $destino) {
    // Verifica se $origem é uma pasta
    if (is_dir($origem)) {
        // Cria a pasta de destino se não existir
        if (!is_dir($destino)) {
            mkdir($destino, 0755, true);
        }

        // Lista todos os itens na pasta de origem
        $itens = scandir($origem);

        // Loop através dos itens
        foreach ($itens as $item) {
            if ($item != '.' && $item != '..') {
                // Constrói os caminhos completos para o item na origem e destino
                $origemItem = $origem . '/' . $item;
                $destinoItem = $destino . '/' . $item;

                // Se for uma pasta, chama a função recursivamente
                if (is_dir($origemItem)) {
                    copiarRecursivamente($origemItem, $destinoItem);
                } else {
                    // Se for um arquivo, copia-o para o destino
                    copy($origemItem, $destinoItem);
                }
            }
        }
    }
}

// Chama a função para copiar os arquivos e pastas recursivamente
copiarRecursivamente($origem, $destino);

echo 'Todos os arquivos e pastas foram movidos para a pasta do script.';
?>
