# Script para fazer upload do vídeo VSL na Vercel
# Execute este script no PowerShell

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  Upload do Vídeo VSL para Vercel" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Verificar se Vercel CLI está instalado
$vercelInstalled = Get-Command vercel -ErrorAction SilentlyContinue

if (-not $vercelInstalled) {
    Write-Host "Vercel CLI não encontrado. Instalando..." -ForegroundColor Yellow
    npm install -g vercel
    Write-Host "Vercel CLI instalado!" -ForegroundColor Green
    Write-Host ""
}

# Verificar se o vídeo existe
$videoPath = "videos\VSL.mp4"
if (-not (Test-Path $videoPath)) {
    Write-Host "ERRO: Vídeo não encontrado em $videoPath" -ForegroundColor Red
    Write-Host "Certifique-se de que o arquivo VSL.mp4 está na pasta videos/" -ForegroundColor Yellow
    exit 1
}

Write-Host "Vídeo encontrado: $videoPath" -ForegroundColor Green
Write-Host "Tamanho: $((Get-Item $videoPath).Length / 1MB) MB" -ForegroundColor Green
Write-Host ""

# Verificar se está logado na Vercel
Write-Host "Verificando login na Vercel..." -ForegroundColor Yellow
$vercelWhoami = vercel whoami 2>&1

if ($LASTEXITCODE -ne 0) {
    Write-Host "Você precisa fazer login na Vercel primeiro." -ForegroundColor Yellow
    Write-Host "Execute: vercel login" -ForegroundColor Cyan
    vercel login
}

Write-Host ""
Write-Host "Fazendo upload do vídeo para produção..." -ForegroundColor Yellow
Write-Host ""

# Fazer upload do vídeo
vercel --prod videos/VSL.mp4

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "========================================" -ForegroundColor Green
    Write-Host "  Upload concluído com sucesso!" -ForegroundColor Green
    Write-Host "========================================" -ForegroundColor Green
    Write-Host ""
    Write-Host "O vídeo agora está disponível em:" -ForegroundColor Cyan
    Write-Host "https://seu-dominio.vercel.app/videos/VSL.mp4" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "A página deve funcionar corretamente agora!" -ForegroundColor Green
} else {
    Write-Host ""
    Write-Host "ERRO ao fazer upload. Verifique:" -ForegroundColor Red
    Write-Host "1. Você está logado na Vercel (vercel login)" -ForegroundColor Yellow
    Write-Host "2. O projeto está linkado (vercel link)" -ForegroundColor Yellow
    Write-Host "3. Você tem permissão no projeto" -ForegroundColor Yellow
}
