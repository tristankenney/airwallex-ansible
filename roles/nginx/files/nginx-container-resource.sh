touch /opt/aws/amazon-cloudwatch-agent/logs/nginx-container-resources.log
while [ true ]
do
    echo $(date) $(docker stats --no-stream --format="{{.Name}} CPU: {{.CPUPerc}}; Mem: {{.MemUsage}}; Mem%: {{.MemPerc}}; NetIO: {{.NetIO}}; BlockIO:  {{.BlockIO}};") >> /opt/aws/amazon-cloudwatch-agent/logs/nginx-container-resources.log 
    sleep 10
done