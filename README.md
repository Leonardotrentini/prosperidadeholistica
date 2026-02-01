# Formación Prosperidad Holística - Página de Vendas

Página de vendas otimizada para mobile e desktop, com foco em performance e carregamento rápido.

## 🚀 Como Hospedar no GitHub

### 1. Criar Repositório no GitHub

1. Acesse [GitHub](https://github.com) e crie um novo repositório
2. Nome sugerido: `prosperidade-holistica` ou `landing-page-vendas`
3. Marque como **Público** (para usar raw.githubusercontent.com)

### 2. Fazer Upload dos Arquivos

```bash
# No terminal, dentro da pasta do projeto:
git init
git add .
git commit -m "Initial commit - Landing page otimizada"
git branch -M main
git remote add origin https://github.com/SEU_USUARIO/SEU_REPO.git
git push -u origin main
```

### 3. Atualizar URLs no HTML

Após fazer upload, substitua no arquivo `index.html`:
- `SEU_USUARIO` pelo seu usuário do GitHub
- `SEU_REPO` pelo nome do seu repositório

**Exemplo:**
```html
<!-- De: -->
src="https://raw.githubusercontent.com/SEU_USUARIO/SEU_REPO/main/imagens/LOGO-FORMACAO.png"

<!-- Para: -->
src="https://raw.githubusercontent.com/leonardotrentini/prosperidade-holistica/main/imagens/LOGO-FORMACAO.png"
```

### 4. Habilitar GitHub Pages (Opcional)

1. Vá em **Settings** > **Pages**
2. Selecione a branch `main` e pasta `/ (root)`
3. Sua página estará em: `https://SEU_USUARIO.github.io/SEU_REPO/`

## 📁 Estrutura de Arquivos

```
prosperidade-holistica/
├── index.html          # Página principal
├── imagens/           # Imagens (logo, certificado, depoimentos)
│   ├── LOGO-FORMACAO.png
│   ├── CERTIFICADO.png
│   ├── testimonial-1.jpg
│   ├── testimonial-2.jpg
│   ├── testimonial-3.jpg
│   └── testimonial-4.jpg
├── videos/            # Vídeos
│   └── VSL.mp4
└── README.md          # Este arquivo
```

## ⚡ Otimizações Implementadas

### Performance
- ✅ Lazy loading em todas as imagens (exceto logo)
- ✅ Preload metadata no vídeo
- ✅ Fontes otimizadas com `display=swap`
- ✅ Preconnect para recursos externos
- ✅ Will-change para animações

### Mobile
- ✅ Design mobile-first
- ✅ Media queries responsivas (480px, 768px)
- ✅ Touch-friendly (touch-action: manipulation)
- ✅ Textos e espaçamentos otimizados para mobile
- ✅ Imagens responsivas

### SEO
- ✅ Meta description
- ✅ Theme color
- ✅ Alt text em todas as imagens
- ✅ Estrutura semântica HTML5

## 📝 Notas Importantes

1. **Vídeos grandes**: GitHub tem limite de 100MB por arquivo. Se o VSL for maior, considere:
   - Usar YouTube/Vimeo (embed)
   - Comprimir o vídeo
   - Usar CDN alternativo (Cloudflare, etc)

2. **Imagens**: Otimize antes de fazer upload:
   - Use ferramentas como [TinyPNG](https://tinypng.com)
   - Formato WebP quando possível
   - Tamanho máximo recomendado: 500KB por imagem

3. **URLs do GitHub**: Use sempre `raw.githubusercontent.com` para assets, não `github.com`

## 🔧 Personalização

Antes de fazer deploy, atualize:
- `SEU_LINK_DE_CHECKOUT_AQUI` - Link do checkout/pagamento
- URLs do GitHub (SEU_USUARIO e SEU_REPO)
- Textos e conteúdos conforme necessário

## 📱 Teste em Mobile

Use as ferramentas de desenvolvedor do navegador (F12) para testar em diferentes tamanhos de tela:
- Mobile: 375px, 414px
- Tablet: 768px
- Desktop: 1024px+
