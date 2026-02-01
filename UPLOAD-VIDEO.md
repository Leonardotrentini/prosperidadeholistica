# 📹 Como Adicionar o Vídeo VSL na Vercel

## ⚠️ Problema
O vídeo `videos/VSL.mp4` (316MB) não está no GitHub porque excede o limite de 100MB.

## ✅ Solução 1: Upload via Vercel CLI (Recomendado)

### Passo a Passo:

1. **Instalar Vercel CLI** (se ainda não tiver):
   ```bash
   npm i -g vercel
   ```

2. **Fazer login na Vercel**:
   ```bash
   vercel login
   ```

3. **Navegar para o projeto**:
   ```bash
   cd "C:\Users\Leonardo trentini\Desktop\prosperidade-holistica"
   ```

4. **Linkar o projeto** (se ainda não linkou):
   ```bash
   vercel link
   ```
   - Selecione o projeto `prosperidadeholistica`

5. **Fazer upload do vídeo**:
   ```bash
   vercel --prod videos/VSL.mp4
   ```

6. **Ou fazer upload de toda a pasta videos**:
   ```bash
   vercel --prod videos/
   ```

## ✅ Solução 2: Upload via Vercel Dashboard

1. Acesse [vercel.com/dashboard](https://vercel.com/dashboard)
2. Selecione o projeto `prosperidadeholistica`
3. Vá em **Settings** > **Storage** (ou use a opção de upload de arquivos)
4. Faça upload do arquivo `VSL.mp4` na pasta `videos/`

**Nota:** A Vercel pode não ter interface direta para upload de arquivos. Use a Solução 1 (CLI) ou Solução 3 (YouTube).

## ✅ Solução 3: Usar YouTube (Mais Rápido e Confiável)

### Vantagens:
- ✅ Carregamento muito mais rápido
- ✅ Não ocupa espaço na Vercel
- ✅ Funciona em qualquer lugar
- ✅ Melhor para SEO

### Passo a Passo:

1. **Fazer upload no YouTube**:
   - Acesse [youtube.com](https://youtube.com)
   - Faça upload do vídeo `VSL.mp4`
   - Configure como **Não listado** ou **Privado** (se quiser)
   - Copie o ID do vídeo (ex: `dQw4w9WgXcQ`)

2. **Atualizar o HTML**:
   - Substitua o elemento `<video>` por `<iframe>` do YouTube
   - Veja exemplo abaixo

3. **Fazer commit e push**:
   ```bash
   git add index.html
   git commit -m "Substituir vídeo local por YouTube"
   git push
   ```

## 🔧 Código para Substituir no index.html

### De (vídeo local):
```html
<div class="video-wrapper">
    <video controls autoplay muted preload="none" playsinline>
        <source src="videos/VSL.mp4" type="video/mp4">
        Tu navegador no soporta la reproducción de videos.
    </video>
</div>
```

### Para (YouTube):
```html
<div class="video-wrapper">
    <iframe 
        src="https://www.youtube.com/embed/SEU_VIDEO_ID?autoplay=1&mute=1&controls=1" 
        frameborder="0" 
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
        allowfullscreen
        style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; border-radius: 8px;">
    </iframe>
</div>
```

**Substitua `SEU_VIDEO_ID` pelo ID do seu vídeo no YouTube.**

## 🚀 Recomendação

**Use a Solução 3 (YouTube)** porque:
- É mais rápida de implementar
- Melhor performance (vídeo carrega mais rápido)
- Não depende do tamanho do arquivo
- Funciona melhor em mobile

## 📝 Após Fazer Upload

1. Teste a página
2. Verifique se o vídeo carrega
3. Teste em mobile e desktop
4. Verifique a velocidade de carregamento
