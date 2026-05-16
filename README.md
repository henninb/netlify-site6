# netlify-site6

A vanilla JavaScript single-page application demonstrating JWT creation, verification, and base64url encoding/decoding using the Web Crypto API (`crypto.subtle`). Deployed to `site6.bhenning.com`.

## Features

- JWT generation with HMAC-SHA256 signing (client-side, no backend)
- JWT verification using `crypto.subtle`
- Base64url encode/decode utilities
- No framework — pure HTML/CSS/JS

## Setup

```bash
npm install
```

## Running

```bash
./run.sh
```

## Deployment

Deploys to Netlify via `netlify.toml`.
