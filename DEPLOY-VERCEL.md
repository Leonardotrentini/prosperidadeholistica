# 🚀 Deploy na Vercel - Guia Completo

## ✅ Arquivos Configurados

- ✅ `vercel.json` - Configuração do Vercel
- ✅ `package.json` - Configuração do projeto
- ✅ `index.html` - Página otimizada
- ✅ `.gitignore` - Arquivos ignorados

## 📋 Passo a Passo para Deploy

### Opção 1: Deploy via GitHub (Recomendado)

1. **Certifique-se que tudo está no GitHub:**
   ```bash
   git add .
   git commit -m "Preparar para deploy Vercel"
   git push
   ```

2. **Acesse a Vercel:**
   - Vá para [vercel.com](https://vercel.com)
   - Faça login com sua conta GitHub

3. **Importe o Projeto:**
   - Clique em "Add New Project"
   - Selecione o repositório `prosperidadeholistica`
   - A Vercel detectará automaticamente as configurações

4. **Configure o Projeto:**
   - **Framework Preset**: Other
   - **Root Directory**: `./` (raiz)
   - **Build Command**: (deixe vazio ou `echo 'No build'`)
   - **Output Directory**: `./`

5. **Deploy:**
   - Clique em "Deploy"
   - Aguarde o processo (1-2 minutos)

### Opção 2: Deploy via Vercel CLI

```bash
# Instalar Vercel CLI
npm i -g vercel

# No diretório do projeto
cd "C:\Users\Leonardo trentini\Desktop\prosperidade-holistica"

# Fazer deploy
vercel

# Para produção
vercel --prod
```

## ⚠️ Importante: Vídeo VSL

O vídeo `videos/VSL.mp4` (316MB) pode causar problemas:

### Opções:

1. **Manter Local (Funciona na Vercel):**
   - O vídeo será servido pela Vercel
   - Pode demorar para carregar (316MB é grande)
   - Funciona, mas não é ideal

2. **Usar YouTube/Vimeo (Recomendado):**
   - Faça upload no YouTube
   - Substitua o `<video>` por `<iframe>` no HTML
   - Muito mais rápido e confiável

3. **CDN de Vídeo:**
   - Cloudflare Stream
   - Bunny.net
   - Mux

## 🔧 Configurações Aplicadas

### Cache Headers:
- Imagens: Cache de 1 ano
- HTML: Sem cache (sempre atualizado)
- Assets estáticos: Cache otimizado

### Segurança:
- X-Content-Type-Options
- X-Frame-Options
- X-XSS-Protection

### Performance:
- CDN global da Vercel
- Compressão automática
- HTTPS automático

## 📊 Após o Deploy

1. **URL Gerada:**
   - A Vercel criará uma URL: `prosperidade-holistica.vercel.app`
   - Você pode adicionar domínio customizado depois

2. **Teste:**
   - Acesse a URL
   - Verifique se tudo carrega
   - Teste em mobile e desktop

3. **Otimizações Automáticas:**
   - ✅ Compressão Gzip/Brotli
   - ✅ CDN global
   - ✅ HTTPS automático
   - ✅ Cache inteligente

## 🎯 Próximos Passos

1. ✅ Fazer deploy
2. ✅ Testar a página
3. ⚠️ Considerar mover vídeo para YouTube
4. ✅ Adicionar domínio customizado (opcional)
5. ✅ Configurar analytics (opcional)

## 🐛 Troubleshooting

### Se o vídeo não carregar:
- Verifique o tamanho do arquivo
- Considere usar YouTube/Vimeo
- Verifique os logs na Vercel

### Se imagens não aparecerem:
- Verifique os caminhos (devem ser relativos)
- Verifique se estão no repositório

### Performance:
- Use PageSpeed Insights para testar
- Verifique Core Web Vitals na Vercel
