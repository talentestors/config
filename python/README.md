# Python config

## pip

```sh
# person config
pip config set global.index-url https://pypi.org/simple
pip config set global.extra-index-url "https://pypi.tuna.tsinghua.edu.cn/simple https://mirrors.bfsu.edu.cn/pypi/web/simple https://mirrors.aliyun.com/pypi/simple"

# Globle pip install
pip install -r main_requirements.txt
```

## conda

.condarc

## Poetry

```sh
poetry config virtualenvs.in-project true
poetry source add tsinghua https://pypi.tuna.tsinghua.edu.cn/simple
```

