<!--
  This file was generated by emdaer

  Its template can be found at .emdaer/README.emdaer.md
-->

# @emdaer/plugin-import

An emdaer plugin that imports content from another file

<!-- Generated by documentation.js. Update this documentation by updating the source code. -->

## importPlugin

Import and optionally render files.

**Parameters**

-   `options` **any** 
    -   `options.path` **[string](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String)?** The filename or file descriptor.
    -   `options.runEmdaer` **[boolean](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Boolean)?** Whether or not to run emdaer on the imported file.

Returns **[Promise](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise)&lt;[string](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String)>** The contents of the imported file

