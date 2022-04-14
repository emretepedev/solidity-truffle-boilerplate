module.exports = {
  root: true,

  env: {
    browser: false,
    es2021: true,
    mocha: true,
    node: true,
  },

  extends: [
    'eslint:recommended',
    'plugin:node/recommended',
    'plugin:json/recommended',
    'prettier',
  ],

  plugins: ['json', 'prettier'],

  rules: {
    'prettier/prettier': 'warn',
    'node/no-unsupported-features/es-syntax': [
      'error',
      { ignores: ['modules'] },
    ],
  },

  overrides: [
    {
      files: ['test/*.test.js', 'migrations/*.js'],
      rules: {
        'no-undef': 'off',
      },
    },
  ],
};
