#!/bin/bash -e

# 現在のバージョンの取得
CURRENT_VER=$(git tag | head -n 1)
echo Current version: $CURRENT_VER

# バージョンがない場合(タグがない場合) v0.0.0 をセット
if [ -z "$CURRENT_VER" ]; then
    MAJOR=0
    MINOR=0
    REVISION=0
else
    MAJOR=$(echo $CURRENT_VER | sed -e 's/v\([0-9]\+\).\([0-9]\+\).\([0-9]\+\)/\1/g')
    MINOR=$(echo $CURRENT_VER | sed -e 's/v\([0-9]\+\).\([0-9]\+\).\([0-9]\+\)/\2/g')
    REVISION=$(echo $CURRENT_VER | sed -e 's/v\([0-9]\+\).\([0-9]\+\).\([0-9]\+\)/\3/g')
fi

# バージョンをインクリメント
# オプションの指定がない場合、オプション誤りの場合はリビジョンを更新する
case "$1" in
    "major" ) MAJOR=$((MAJOR + 1)) ;;
    "minor" ) MINOR=$((MINOR + 1)) ;;
    * ) REVISION=$((REVISION + 1)) ;;
esac
NEXT_VER=v$MAJOR.$MINOR.$REVISION
echo Next version: $NEXT_VER

# タグの付与とプッシュ
git tag $NEXT_VER
git push origin $NEXT_VER

exit 0
