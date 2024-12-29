# based on age encrypt

see <https://github.com/FiloSottile/age> or <https://age-encryption.org>

## decrypt

age --decrypt -i ${mykeyPath/}mykey.agepub MateMaskWord.md.age > test.txt

## encrypt

age -r ${public key} -o MateMaskWord.md.age word.txt.md

---

My GPG key: [`65B18BE2CC0BB8D4AAB5F87794E2FB40169EEB90`](https://keys.openpgp.org/vks/v1/by-fingerprint/65B18BE2CC0BB8D4AAB5F87794E2FB40169EEB90)

My Age receipt: `age1nmld8sjv28x2h4k38jguzm7tults5naqp428f584llchvesn3czq8xp69a`.
