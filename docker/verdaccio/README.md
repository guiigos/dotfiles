# Verdaccio
## Start

```bash
docker compose up -d
```

## Configure

```bash
npm set registry http://localhost:4873
npm adduser --registry http://localhost:4873
```

## Publish

```bash
npm publish --registry http://localhost:4873
```

t is recommended to use a **scope** in the `package.json`:
```json
{
  "name": "@scope/package",
  "version": "1.0.0"
}
```
