# 🐬 Dockerized TypeScript App Template

TypeScript based stack for testing & production with the following features:

- Tree-shaking
- Deploy to Docker
- Instant reload in debug mode
- ESLint & Prettier support for Visual Studio Code out of the box

## 🎬 Getting Started

```yarn start```

Execute source code with nodemon for live reloading of code changes.

```yarn test```

Run all *.test.ts files in test/ directory.

```yarn build```

Export app to prod/app.ts after running tsc & rollup.

```yarn deploy```

Creates a minimal Docker image based on the output from yarn build

## 🍔 Tech Stack

- TypeScript
- ES6

## 🔨 Unit Testing

- Mocha
- Chai

## 🔩 Code Quality

- ESLint - Airbnb JavaScript Style Guide
- Rollup - CJS by default

## 🏃 Runtime

- Docker
- PM2
- Node.js

## 🛥️ External Ports

If you wanted to extend this template to create an API server, you would do so in your docker-compose file utilizing the output image from this template or when running from the command line like this:

```docker run -p <public_port>:<private_port> -d <image>```

## :police_car: License

This project is licensed under the GNU General Public License, version 3 (GPLv3) and is distributed free of charge.

## 👨‍💻 Contributors

Timothy Miller

- GitHub: <https://github.com/timothymiller> 💡
- Website: <https://timknowsbest.com> 💻
- Donation: <https://timknowsbest.com/donate> 💸
