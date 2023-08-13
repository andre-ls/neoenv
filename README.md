# Neovim + Python Env

<img src="https://pythonist.ru/wp-content/uploads/2020/04/pythonist-cover-vim-2.png"
     alt="Python + Vim Head Image"
     style="float: left; margin-right: 10px;" />

Repository containing my NeoVim + Python Dev Environment. It basically contains two files:
  - init.vim, which contains my personal configurations for NeoVim;
  - Dockerfile, which builds a Docker Image of this Dev Environment.

## NeoVim File

The first version was generated at https://vim-bootstrap.com/, for Python Language, CodeDark theme and Neovim, and them some adjustments were made along the time.

To fully make the configurations work, two Python Dependencies are needed on the environment (Basically for Autocomplete on Python Code):
  - Jedi (https://pypi.org/project/jedi/)
  - PyNvim (https://pypi.org/project/pynvim/)

## Dockerfile

The Dockerfile basically creates a Docker Image from the Python Official Image and make the proper instalation of NeoVim with the configurations defined on the init.vim file. To proper use this image on a real developing scenario, two more things may be desirable:
  - Install the code dependencies (which can be done by extending the image and adding a 'pip install -r requirements.txt' command, for example);
  - Create a Bind Mount to the Host Machine to save the scripts created inside the container (which can be done with the proper options on the docker run command, like 'docker run -v /host/path:/container/path' <image-name>').

So, with this image, a very portable and easy to install environment can be created and run everywhere where Docker is available.

## Future Steps
- As said, this image is made properly for development, and for a deployment usage installing NeoVim is uneccesary. So maybe, creating some way to make NeoVim instalation optional would ge a good idea.
