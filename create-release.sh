# Fazer o switch para a branch develop
git switch develop

# Atualizar a branch develop com as alterações da branch main
git pull origin main

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

# Fazer o switch para a branch feature com a tag mais recente
git switch -c feature/$NEW_TAG;

# Fazer o switch para a branch release com a tag mais recente
git switch -c release/$NEW_TAG;