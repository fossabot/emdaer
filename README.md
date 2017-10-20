<!--
  This file was generated by emdaer

  Its template can be found at .emdaer/README.emdaer.md
-->

# emdaer · [![Travis](https://img.shields.io/travis/emdaer/emdaer.svg?style=flat-square)](https://travis-ci.org/emdaer/emdaer/) [![Documented with emdaer](https://img.shields.io/badge/📓-documented%20with%20emdaer-F06632.svg?style=flat-square)](https://emdaer.me/) [![Maintained with lerna](https://img.shields.io/badge/🐉-maintained%20with%20lerna-cc00ff.svg?style=flat-square)](https://lernajs.io/)

📓 emdaer is a tool for creating and maintaining better READMEs

## What is emdaer?

And because READMEs (and other documentation) are crucial files that are often lackluster and/or incomplete and have a tendency to become stale

At its core, emdaer enables you to use plugins and transforms within markdown files

A couple use cases that illustrate the power of emdaer:

- 🤝 **Keep things in sync**: Do you have a series of repositories that should have their READMEs kept in sync? With emdaer you can create a template that pulls all the information from each project&#8217;s package.json and codebase
- 🍋 **Keep things fresh**: Do you want to thank your contributors in your README? With emdaer you can pull that information from GitHub automatically and have it organized in an attractive list or table


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
  - options: q
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


## Contributing

If you&#8217;d like to make emdaer better, please read our [guide to contributing](./CONTRIBUTING.md).


## License

emdaer is [MIT licensed](./LICENSE).

<!--emdaer-t
  - '@emdaer/transform-smartypants'
  - options: q
-->
