#!/bin/sh
exec st -c floatterm -g 160x47 -e zsh -c '
select loc in Stillwater Stillwater-v2 Livingston Livingston-v2 Prague Prague-v2 "San Diego" "San Diego-v2" Read Read-v2 Default Default-v2 Moon weather ; do
	case $loc in
		Stillwater) curl "wttr.in/SWO?m" ; break ;;
		Stillwater-v2) curl "v2.wttr.in/SWO?m" ; break ;;
		Livingston) curl "wttr.in/KLVM?m" ; break ;;
		Livingston-v2) curl "v2.wttr.in/KLVM?m" ; break ;;
		Prague) curl "wttr.in/Prague?m" ; break ;;
		Prague-v2) curl "v2.wttr.in/Prague?m" ; break ;;
		"San Diego") curl "wttr.in/San_Diego?m" ; break;;
		"San Diego-v2") curl "v2.wttr.in/San_Diego?m" ; break ;;
		Read) read foo ; curl "wttr.in/$foo?m" ; break ;;
		Read-v2) read foo ; curl "v2.wttr.in/$foo?m" ; break ;;
		Default) curl "wttr.in/?m"; break ;;
		Default-v2) curl "v2.wttr.in/?m"; break ;;
		Moon) curl "wttr.in/moon" ; break;;
		weather) weather ; break;;
	esac ;
done ;
read foo'
