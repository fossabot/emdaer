<!--
  This file was generated by emdaer

  Its template can be found at .emdaer/README.emdaer.md
-->

# emdaer · [![Travis](https://img.shields.io/travis/emdaer/emdaer.svg?style=flat-square)](https://travis-ci.org/emdaer/emdaer/) [![Documented with emdaer](https://img.shields.io/badge/📓-documented%20with%20emdaer-F06632.svg?style=flat-square)](https://github.com/emdaer/emdaer) [![Maintained with lerna](https://img.shields.io/badge/🐉-maintained%20with%20lerna-cc00ff.svg?style=flat-square)](https://lernajs.io/)
📓 emdaer is a tool for creating and maintaining better READMEs
## What is emdaer?

emdaer lets you to use plugins and transforms within markdown files because READMEs (and other documentation) are crucial files that are often lackluster and/or incomplete and have a tendency to become stale

A couple use cases that illustrate the power of emdaer:

- 🤝 **Keep it in sync** Create templates for use across all of your organizations projects to promote synchronicity and reduce doing the same work over and over
- 🗃 **Keep it organized** Keep your documentation DRY and organized by importing content from your codebase and splitting large documents into chunks
- 🍋 **Keep it fresh** Ensure your documents stay up to date by pulling in new data from various sources with every build

## How emdaer works

emdaer processes template files and writes the resulting files to your project.

We match `.emdaer/(**/*).emdaer(.md)` and use the captured part of each matched file to determine the path for the output.

### Plugins & Transforms

```md
# <!--emdaer-p
  - '@emdaer/plugin-value-from-package'
  - value: name
-->

Hello, World!

<!--emdaer-t
  - '@emdaer/transform-smartypants'
  - options: qe
-->

```

This example includes one plugin call (`emdaer-p`) and one transform call (`emdaer-t`).

Both of these calls take the form of yaml tuples where the first item is the name of the function to call and the second item is an options object that is passed to that function.

For plugins, the result of the call replaces the corresponding comment block.

For transforms, the function acts on the entire document and rewrites the entire file.

## Adding emdaer to your project

We recommend using emdaer with [husky](https://github.com/typicode/husky).

Install dependencies:

```sh
npm install --save-dev @emdaer/cli @emdaer/plugin-value-from-package husky
```

Add a `precommit` script:

```json
  "scripts": {
    "emdaer": "emdaer && git add *.md",
    "precommit": "npm run emdaer"
  }
```

Add a `.emdaer/README.emdaer.md` file:

```md
# <!--emdaer-p
  - '@emdaer/plugin-value-from-package'
  - value: name
-->

```

And give it a whirl:

```sh
npm run emdaer
```

## Core Plugins

- **[@emdaer/plugin-details](packages/plugin-details)** an emdaer plugin to generate details
- **[@emdaer/plugin-documentation](packages/plugin-documentation)** an emdaer plugin to generate documentation with documentationjs
- **[@emdaer/plugin-image](packages/plugin-image)** an emdaer plugin to generate images
- **[@emdaer/plugin-import](packages/plugin-import)** an emdaer plugin to import files
- **[@emdaer/plugin-license-reference](packages/plugin-license-reference)** an emdaer plugin to generate a license reference
- **[@emdaer/plugin-link](packages/plugin-link)** an emdaer plugin to generate links
- **[@emdaer/plugin-list](packages/plugin-list)** an emdaer plugin to add lists
- **[@emdaer/plugin-list-lerna-packages](packages/plugin-list-lerna-packages)** an emdaer plugin to generate a list of lerna packages
- **[@emdaer/plugin-shields](packages/plugin-shields)** an emdaer plugin to generate shields from shields.io
- **[@emdaer/plugin-table](packages/plugin-table)** an emdaer plugin to generate tables
- **[@emdaer/plugin-value-from-package](packages/plugin-value-from-package)** an emdaer plugin to add values from package.json

## Core Transforms

- **[@emdaer/transform-github-emoji](packages/transform-github-emoji)** an emdaer transform to use github flavored emoji codes
- **[@emdaer/transform-smartypants](packages/transform-smartypants)** an emdaer transform to apply smartypants

## Contributing

If you&#8217;d like to make emdaer better, please read our [guide to contributing](./CONTRIBUTING.md).

## License

emdaer is [MIT licensed](./LICENSE).


