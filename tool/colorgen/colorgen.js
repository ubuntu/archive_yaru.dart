#! /usr/bin/env node

const { makePalette } = require('material-color-tool');

if (process.argv.length != 4 || (process.argv[3].length != 6)) {
  console.error('Usage: colorgen <name> <RRGGBB>\n\nFor example: colorgen orange e95620');
  process.exit(1);
}

const name = process.argv[2];
const color = process.argv[3].toUpperCase();
const palette = makePalette(color);
let shade = 50, hasPrimary = false;

console.info('Copy and paste to `lib/src/colors/yaru_colors.dart:\n');
console.log('  static const _%sPrimaryValue = 0xFF%s;', name, color);
console.log('  static const %s = MaterialColor(_%sPrimaryValue, {', name, name);
for (let i = 1; i <= palette.length; ++i) {
  if (color === palette[i - 1].substr(1)) {
    hasPrimary = true;
    console.log('    %d: Color(_%sPrimaryValue),', shade, name);
  } else {
    console.log('    %d: Color(0xFF%s),', shade, palette[i - 1].substr(1));
  }
  shade = i * 100;
}
console.log('  });');

if (!hasPrimary) {
  console.warn('\nWARNING: Could not match the primary value. Please replace the closest shade by "_%sPrimaryValue".', name);
}
