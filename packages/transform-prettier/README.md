<!--
  This file was generated by emdaer

  Its template can be found at .emdaer/README.emdaer.md
-->

# @emdaer/transform-prettier

An emdaer transformation that formats markdown, including code blocks, using
prettier

<!-- Generated by documentation.js. Update this documentation by updating the source code. -->

## prettierTransform

* **See: [Prettier docs](https://github.com/prettier/prettier#options)**

Transform a string using prettier.

**Parameters**

* `content`
  **[string](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String)**
  The content
* `options`
  **[Object](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object)**
  Transform options (optional, default `{options:{parser:PARSER}}`)
  * `options.options`
    **[Object](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object)**
    Prettier options
    * `options.options.config`
      **[string](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String)**
      The path to the Prettier config file. Overrides other Prettier options
      provided.

Returns
**[Promise](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise)&lt;[string](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String)>**
The content formatted by Prettier
