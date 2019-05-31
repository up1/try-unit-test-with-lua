FROM abaez/luarocks
RUN luarocks install luaunit
RUN luarocks install luacov
