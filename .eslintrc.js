module.exports = {
  root: true,

  env: {
    es2021: true,
  },

  extends: ['eslint:recommended', 'plugin:json/recommended', 'prettier'],

  plugins: ['json'],

  rules: {
    'no-undef': 'off',
  },
};
