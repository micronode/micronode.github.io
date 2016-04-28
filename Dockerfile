FROM ruby

EXPOSE 4000 80

WORKDIR /srv/jekyll

# Support caching using data volumes..
ENV BUNDLE_PATH=/bundle

COPY Gemfile _config.yml index.html ./
COPY _posts _posts
COPY _layouts _layouts
COPY _includes _includes
COPY _sass _sass
COPY css css

COPY scripts scripts

CMD ["scripts/jekyll-serve.sh"]
