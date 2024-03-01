# Very preliminary script to set up the data for preprocessing

wget --user-agent "Mozilla/5.0" "https://download.wetransfer.com/eugv/4bbea9b4a54baddea549d71271a38e2c20230428071257/76d9a77ca7e3e01ca420bbeb8ceb04d5e5697ac7/criteo_terabyte-dataset-24-files_2023-04-28_0712.zip?cf=y&token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6ImRlZmF1bHQifQ.eyJleHAiOjE3MDg5ODIzOTYsImlhdCI6MTcwODk4MTc5NiwiZG93bmxvYWRfaWQiOiIwNWZkODk5NC02Y2FlLTRiZDItYjVhNS1kNjA2ZjU1YzI5OWIiLCJzdG9yYWdlX3NlcnZpY2UiOiJzdG9ybSJ9.ZmBqRXeFg0eir4hUkTz4dw76AIK22N4c3M76FNz50mU" -O /mydata/criteo.zip

unzip criteo.zip -d /mydata/criteo

for i in {0..23}; do gzip -dk day_$i.gz & done
# And wait for all tasks to finish
