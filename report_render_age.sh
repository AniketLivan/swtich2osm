# -----------------------------------------------------------------------------
# By default, tile rendering START and END are written to syslog.  An "age"
# is written on the START line showing the age of the tile, or "new metatile"
# if the tile did not previously exist.
# 
# When the minutely updates system is initialised with e.g.
# ~/src/mod_tile/openstreetmap-tiles-update-expire 2016-06-11T20:29:02Z
# Existing tiles are given a "very old time" and they are picked up by the
# 7000+ days line.
#
# Today's syslog (from around 6am) is the default; yesterdays can be passed as 
# an argument:
# report_render_age.sh /var/lib/syslog.1
# -----------------------------------------------------------------------------

if [ -n "$1" ]
then
export syslog_to_process=$1
else
export syslog_to_process=/var/log/syslog
fi

echo "Tiles rendered in $syslog_to_process"
echo "----------------------------------"

echo "0 days           " `grep " age " $syslog_to_process | sed "s/.*age//" | sed "s/\....days/ days/" | grep " 0 " | wc -l`
echo "1 day            " `grep " age " $syslog_to_process | sed "s/.*age//" | sed "s/\....days/ days/" | grep " 1 " | wc -l`
echo "2 days           " `grep " age " $syslog_to_process | sed "s/.*age//" | sed "s/\....days/ days/" | grep " 2 " | wc -l`
echo "3 days           " `grep " age " $syslog_to_process | sed "s/.*age//" | sed "s/\....days/ days/" | grep " 3 " | wc -l`
echo "4 days           " `grep " age " $syslog_to_process | sed "s/.*age//" | sed "s/\....days/ days/" | grep " 4 " | wc -l`
echo "5 days           " `grep " age " $syslog_to_process | sed "s/.*age//" | sed "s/\....days/ days/" | grep " 5 " | wc -l`
echo "6 days           " `grep " age " $syslog_to_process | sed "s/.*age//" | sed "s/\....days/ days/" | grep " 6 " | wc -l`
echo "7 days           " `grep " age " $syslog_to_process | sed "s/.*age//" | sed "s/\....days/ days/" | grep " 7 " | wc -l`
echo "8 days           " `grep " age " $syslog_to_process | sed "s/.*age//" | sed "s/\....days/ days/" | grep " 8 " | wc -l`
echo "9 days           " `grep " age " $syslog_to_process | sed "s/.*age//" | sed "s/\....days/ days/" | grep " 9 " | wc -l`
echo "10-19 days       " `grep " age " $syslog_to_process | sed "s/.*age//" | sed "s/\....days/ days/" | grep " 1. " | wc -l`
echo "20-29 days       " `grep " age " $syslog_to_process | sed "s/.*age//" | sed "s/\....days/ days/" | grep " 2. " | wc -l`
echo "30-39 days       " `grep " age " $syslog_to_process | sed "s/.*age//" | sed "s/\....days/ days/" | grep " 3. " | wc -l`
echo "40-49 days       " `grep " age " $syslog_to_process | sed "s/.*age//" | sed "s/\....days/ days/" | grep " 4. " | wc -l`
echo "50-59 days       " `grep " age " $syslog_to_process | sed "s/.*age//" | sed "s/\....days/ days/" | grep " 5. " | wc -l`
echo "60-69 days       " `grep " age " $syslog_to_process | sed "s/.*age//" | sed "s/\....days/ days/" | grep " 6. " | wc -l`
echo "70-79 days       " `grep " age " $syslog_to_process | sed "s/.*age//" | sed "s/\....days/ days/" | grep " 7. " | wc -l`
echo "80-89 days       " `grep " age " $syslog_to_process | sed "s/.*age//" | sed "s/\....days/ days/" | grep " 8. " | wc -l`
echo "90-99 days       " `grep " age " $syslog_to_process | sed "s/.*age//" | sed "s/\....days/ days/" | grep " 9. " | wc -l`
echo "manually expired " `grep " age " $syslog_to_process | sed "s/.*age//" | sed "s/\....days/ days/" | grep " 7... " | wc -l`
echo "manually expired " `grep " age " $syslog_to_process | sed "s/.*age//" | sed "s/\....days/ days/" | grep " 10... " | wc -l`
echo "new metatiles    " `grep "new meta" $syslog_to_process | wc -l`



