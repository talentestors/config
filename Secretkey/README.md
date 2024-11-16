# based on age encrypt

see <https://github.com/FiloSottile/age> or <https://age-encryption.org>

## decrypt

age --decrypt -i ${mykeyPath/}mykey.agepub MateMaskWord.md.age > test.txt

## encrypt

age -r ${public key} -o MateMaskWord.md.age word.txt.md

