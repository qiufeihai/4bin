#!/usr/bin/env bash
#
# author: feihai
#* 
# 安装4bin
#*

install_from_github(){
  [ -e "/tmp/4bin" ] && rm -rf /tmp/4bin
  git clone --depth 1 https://github.com/qiufeihai/4bin.git /tmp/4bin
  chmod +x /tmp/4bin/4* 
  sudo cp /tmp/4bin/4*  /usr/local/bin/
  rm -rf /tmp/4bin
}

install_from_gitee(){
  [ -e "/tmp/4bin" ] && rm -rf /tmp/4bin
  git clone --depth 1 https://gitee.com/SImMon_Fo4r/bin.git /tmp/4bin
  chmod +x /tmp/4bin/4*
  sudo cp /tmp/4bin/4*  /usr/local/bin/
  rm -rf /tmp/4bin
}


PS3='请选择命令: '
options=(
  "从github安装"
  "从gitee安装"
  "退出"
)
select opt in "${options[@]}"
do
    case $opt in
        "从github安装")
        install_from_github
            ;;
        "从gitee安装")
        install_from_gitee
            ;;
        "退出")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done



