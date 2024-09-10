# Descobrir qual é a última tag criada
LAST_TAG=`git describe`

# Separar as informações da última tag
TAGS=(${LAST_TAG//./ })

# Incrementar a última tag, tornando-a a tag mais recente
VNUM1=${TAGS[0]};
VNUM2=${TAGS[1]};
VNUM3=${TAGS[2]};
VNUM3=$((VNUM3+1));

NEW_TAG="$VNUM1.$VNUM2.$VNUM3"

# Criar a nova tag
git tag -a $NEW_TAG -m "Release da tag $NEW_TAG"

# Atualizar as tags no repositório remoto
git push --tags

# Descobrir o nome da branch atual
BRANCH_NAME=`git rev-parse --abbrev-ref HEAD`

# Enviar o código para o repositório remoto
git push origin $BRANCH_NAME