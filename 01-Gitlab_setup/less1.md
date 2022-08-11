# Lesson 1 - Git

#### HW

[TOC]

####Створити remote репозиторій на одній з платформ на вибір(або на власному сервері за наявності):
######GitHub
![](githab.com)](https://img001.prntscr.com/file/img001/hg0P4wptSy2YknMT6lnH2g.png)
`<link>` : <https://github.com/3ugol/WebAcad>
GitLab
Bitbucket
####Налаштувати репозиторій на локальній машині
на windows
інсталюємо git bash `<link>` : <https://git-scm.com/download/win>
налаштовуемо оточення
`> git config --global --add user.name cameronmcnz`
`> git config --global --add user.email global-config@example.com`
клонуемо репозеторій
`> git clone git@github.com:3ugol/WebAcad.git`
####Створити гілки main/master, development
створіть новий репозиторій у командному рядку

`>echo "# test" >> README.md`
`>git init`
`>git add README.md`
`>git commit -m "first commit"`
`>git branch -M main`
`>git remote add origin git@github.com:3ugol/WebAcad.git`
`>git push -u origin main`

`>git checkout -b development`

####Зробити feature branch, покласти туди любий текстовий файл та зробити ряд комітів
`>git checkout -b feature`
`>echo "#crate commite" >> README.md`
`>git add .`
`>git commit -m "[OKOTV]my first commit"`
`>vim less1.md`
`>git commit -a -m 'Create new file'`
####Змережити зміни с dev гілкою
`>git checkout development`
`>git merge feature`
####Спробувати роботу з тегами
`>git tag -a v0.0.1 -m "my version 0.0.1"`
`>git show v0.0.1`
`>git push origin v0.0.1`
або якщо багато тегів
`>git push origin --tags`
