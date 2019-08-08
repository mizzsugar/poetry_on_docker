最初に
======

DockerでDjangoプロジェクトを開発する雛形です。

パッケージ管理にpoetryを利用します。


Dockerコンテナを立ち上げる前に、環境変数を管理する.envファイルをルートディレクトリに作成してください

`touch .env`



.envファイルの中身
=================
SECRET_KEY=secret_key_123456789

DJANGO_ENV=production  # 開発環境の場合はなくてもよい

ALLOWED_HOSTS=example.com,127.0.0.1

POSTGRESQL_DATABASE=database_name

POSTGRESQL_USER=postgres

POSTGRESQL_PASSWORD=password

POSTGRESQL_HOST=db

POSTGRESQL_PORT=5432

=================
