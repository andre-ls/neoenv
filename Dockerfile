FROM python:3

RUN apt-get update && apt-get install -y neovim python3-neovim && \
    sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim' && \
    sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/}"/.config/nvim/init.vim --create-dirs \
        https://raw.githubusercontent.com/andre-ls/neoenv/main/init.vim'

RUN pip install --upgrade pip && \
    pip install jedi pynvim && \
    nvim --headless +PlugInstall +qa && \
    nvim +UpdateRemotePlugins +qa

CMD ["/bin/bash"]






