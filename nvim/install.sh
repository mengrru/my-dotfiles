# install vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim' && \
# install latest node
curl -sL install-node.now.sh/lts | sudo bash && \

mkdir ../coc/extensions && cp ./package.json ../coc/extensions/package.json && cd ../coc/extensions && \
# install coc extensions
npm i
# init nvim
nvim +'PlugInstall'
