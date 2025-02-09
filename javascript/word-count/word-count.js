export const countWords = (phrase) => phrase
    .toLowerCase()
    .match(/\w+('\w+)?/g)
    .reduce((acc, word) => ({ ...acc, [word]: ~~acc[word] + 1 }), {});

