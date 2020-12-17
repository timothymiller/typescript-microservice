# 🐬 TypeScript Microservice Template

TypeScript Microservice starter project with batteries included.

## 🔔 Features

- Write code in ES6 TypeScript
- ESLint & Prettier integration with VS Code extensions
- Instant code reload in debug mode
- JavaScript optimizations

## 🔩 Code Quality

- ESLint - Airbnb JavaScript Style Guide
- Prettier - Format code on save

## JavaScript Optimizations

- [Rollup](https://www.npmjs.com/package/rollup)
- Tree-shaking
- Optimize ES modules for faster native loading
- Removes `console.log` statements from docker builds
- CommonJS module format

## 🔨 Unit Testing

- Mocha
- Chai

## 🎬 Getting Started

```yarn start```

Execute source code with nodemon for live reloading of code changes.

```yarn test```

Run all *.test.ts files in test/ directory.

```yarn build```

Export app to prod/app.ts after running tsc & rollup.

## 🛥️ External Ports

If you wanted to extend this template to create an API server, you would do so in your docker-compose file utilizing the output image from this template or when running from the command line like this:

```docker run -p <public_port>:<private_port> -d <image>```

## License

This Template is licensed under the GNU General Public License, version 3 (GPLv3).

## Author

Timothy Miller

[View my GitHub profile 💡](https://github.com/timothymiller)

[View my personal website 💻](https://timknowsbest.com)