import soldoc from '@soldoc/soldoc';

/* default options */
const options = {
  in: './libs/contracts/contracts',
  out: './libs/contracts/docs/@soldoc',
  /* json: undefined, */
  /* repoUrl: undefined, */
  /* log: undefined, */
  quiet: false,
  theme: '@soldoc/json',
};
soldoc(options).then(
  () => console.log('done'),
  (err) => console.error(err),
); // returns a promise
