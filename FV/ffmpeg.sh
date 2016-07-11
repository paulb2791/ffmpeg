export HOME="/pencoder"
cd $HOME/source/ffmpeg
PATH="$PATH:$HOME/bin" PKG_CONFIG_PATH="$HOME/ffmpeg_build/lib/pkgconfig" ./configure \
  --prefix="$HOME/ffmpeg_build" \
  --extra-cflags="-I$HOME/ffmpeg_build/include" \
  --extra-ldflags="-L$HOME/ffmpeg_build/lib" \
  --bindir="$HOME/bin" \
  --enable-gpl \
  --enable-libass \
  --enable-libfdk-aac \
  --enable-libfreetype \
  --enable-libmp3lame \
  --enable-libtheora \
  --enable-libvorbis \
  --enable-libx264 \
  --enable-nonfree 
PATH="$PATH:$HOME/bin" make
make install
make distclean
hash -r
