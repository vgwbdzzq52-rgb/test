#!/bin/bash
#详细
#Name:陈俊杰
#Desc:猜拳,石头（1），剪刀（2），布（3）

while true;do
        echo
        echo "猜拳"
        read a
        RANDOM=$(date +%s%N)
        b=$((RANDOM%3+1))
        if [ "$a" = "石头" ]; then
                if [ $b -eq 1 ]; then
                        echo "平"
                elif [ $b -eq 2 ];then 
                        echo "你赢"
                else 
                        echo "你输"
                fi

        elif [ "$a" = "剪刀" ]; then
                if [ $b -eq 2 ]; then
                        echo "平"
                elif [ $b -eq 3 ]; then
                        echo "你赢"
                else  
                        echo "你输"
                fi
        elif [ "$a" = "布" ]; then
                if [ $b -eq 3 ];then 
                        echo "平"
                elif [ $b -eq 1 ]; then
                        echo "你赢"
                else 
                        echo "你输"
                fi
        else
                echo "输入错误,输入'石头，剪刀，布'"
                continue
        fi
        echo "再来一次吗？（y/n）"
        read c
        if [ "$c" != "y" ];then
                echo "游戏结束"
                break
        fi
done
