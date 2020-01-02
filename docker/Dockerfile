FROM ubuntu:18.04

# Install build dependencies (and vim + picocom for editing/debugging)
RUN apt -qq update \
    && apt install -y git wget flex bison gperf python python-pip python-setuptools python-serial libusb-1.0-0 \
		libncurses5 libncurses5-dev \
		python-click python-cryptography python-future python-pyparsing python-pyelftools cmake ninja-build ccache vim \
		dos2unix libboost-all-dev texinfo texi2html libxml2-dev subversion bison flex zlib1g-dev \
    && apt clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN export PERL_MM_USE_DEFAULT=1 && cpan App::Prove Modern::Perl Capture::Tiny Capture::Tiny::Extended Path::Tiny File::Path Template Template::Plugin::YAML Test::Differences CPU::Z80::Assembler Test::HexDifferences Data::HexDump Object::Tiny::RW Regexp::Common List::Uniq

ENV USRNAME z80
#set USER_ID to the user id you run under in linux
ENV USER_ID 1000
RUN useradd -m -u $USER_ID -G plugdev,dialout,root -s /bin/bash $USRNAME

RUN echo "#########\n# START Added by docker buid\n######" >> /home/$USRNAME/.bashrc
RUN echo "export ZCCCFG=/home/z80/z88dk/lib/config" >> /home/$USRNAME/.bashrc
RUN echo "export PATH=${PATH}:/home/z80/z88dk/bin" >> /home/$USRNAME/.bashrc
RUN echo "#########\n# END Added by docker buid\n######" >> /home/$USRNAME/.bashrc
COPY --chown=z80:z80 ./vimrc /home/$USRNAME/.vimrc

# install vundle
RUN su - $USRNAME -c "git clone https://github.com/VundleVim/Vundle.vim.git /home/$USRNAME/.vim/bundle/Vundle.vim"
RUN su - $USRNAME -c "vim +PluginInstall +qall"
RUN su - $USRNAME -c "git clone --depth 1 --recursive https://github.com/z88dk/z88dk.git"
RUN su - $USRNAME -c "cd z88dk && chmod 777 build.sh && ./build.sh"
RUN su - $USRNAME -c "mkdir project" 

COPY ./entry.sh /bin/entry.sh 
RUN chmod +x /bin/entry.sh
ENTRYPOINT ["/bin/entry.sh"]

