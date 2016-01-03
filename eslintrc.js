module.exports = {
  'rules': {
    'indent': [
      2,
      2
    ],
    'strict':[2, 'function'],
    'eqeqeq': 2,
    'quotes': [
      2,
      'single'
    ],
    'linebreak-style': [
      2,
      'unix'
    ],
    'semi': [
      2,
      'always'
    ],
    'no-console': 0,
    'valid-jsdoc': [
      2, {
        'requireReturn': false
      }
    ],
    'one-var': [2, 'never'],
    'require-jsdoc': [2, {
      'require': {
        'FunctionDeclaration': true,
        'MethodDefinition': false,
        'ClassDeclaration': false
      }
    }]
  },
  'env': {
    'es6': true,
    'node': true,
    'browser': true
  },
  'extends': 'eslint:recommended'
};
