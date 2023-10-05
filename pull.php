<?php
$destPath = 'master'; // Substitua pelo caminho da pasta no servidor
$zipUrl = 'https://github.com/UFPEL-gestao-saude/Unificado/archive/master.zip';
$zipFilename = "$destPath/repo.zip";

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

// Função para mover os arquivos de uma pasta para outra
function moverArquivos($src, $dst) {
    $files = glob("$src/*");
    foreach ($files as $file) {
        $newLocation = "$dst/" . basename($file);
        if (is_dir($file)) {
            // Se for uma subpasta, mova recursivamente
            moverArquivos($file, $newLocation);
        } else {
            // Se for um arquivo, mova-o
            rename($file, $newLocation);
        }
    }
}

// Limpa a pasta antes de continuar
limparPasta($destPath);

// Baixa o arquivo ZIP do GitHub e o salva
file_put_contents($zipFilename, file_get_contents($zipUrl));

// Extrai o arquivo ZIP para a pasta de destino
$zip = new ZipArchive;
if ($zip->open($zipFilename) === TRUE) {
    $zip->extractTo($destPath);
    $zip->close();

    // Move os arquivos da pasta extraída para a pasta de destino
    $extractedFolder = glob("$destPath/*", GLOB_ONLYDIR);
    if (count($extractedFolder) === 1) {
        moverArquivos($extractedFolder[0], $destPath);
        rmdir($extractedFolder[0]);
    }

    // Remove o arquivo ZIP após a extração
    unlink($zipFilename);

    echo "Repositório baixado e arquivos movidos com sucesso!";
} else {
    echo "Erro ao extrair o arquivo ZIP.";
}
?>
