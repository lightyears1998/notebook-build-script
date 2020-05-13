import yaml

confpath = "./mkdocs.yml"
with open(confpath, encoding="utf8") as f:
    conf = f.read()
conf = yaml.safe_load(conf)

conf['site_name'] = '青色的麦芒'
conf['site_url'] = 'https://qfstudio.net/'
conf['site_description'] = 'lightyears 的个人笔记本'
conf['theme']['custom_dir'] = 'theme'

with open(confpath, mode="w", encoding="utf8") as f:
    f.write(yaml.safe_dump(conf, allow_unicode=True))
