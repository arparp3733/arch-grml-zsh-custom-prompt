TMPT_PRMPT=`awk '{printf "%3.1f\xe2\x84\x83\n", $1/1000}' /sys/class/thermal/thermal_zone0/temp`

function tmpt_prompt () {
    REPLY=${TMPT_PRMPT+${TMPT_PRMPT:t} }
}

grml_theme_add_token tmpt_show -f tmpt_prompt

zstyle ':prompt:grml:left:setup' items rc change-root user at host path vcs tmpt_show percent
