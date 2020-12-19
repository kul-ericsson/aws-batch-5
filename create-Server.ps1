$imageDetails = aws ec2 describe-images --filters Name="tag:Name",Values="ericsson-batch-5-ubuntu-image" | ConvertFrom-Json
$amiID = $imageDetails.Images.ImageId

$keyPairs = aws ec2 describe-key-pairs | ConvertFrom-Json

foreach($keyPair in $keyPairs.KeyPairs){
    if ($keyPair.KeyName -match "ericsson"){
        $keyName = $keyPair.KeyName
    }
}

$serverInfo = aws ec2 run-instances --image $amiID --key-name $KeyName --instance-type "t2.micro" 

write-host "[INFO] Some Deployment"
Write-Host "[INFO] Some Testing"

sleep 40

foreach($instance in ($serverInfo | ConvertFrom-Json).Instances){
    aws ec2 terminate-instances --instance-ids $instance.InstanceId
}

foreach($instance in (aws ec2 describe-instances | ConvertFrom-Json).Reservations.Instances){
    aws ec2 terminate-instances --instance-ids $instance.InstanceId
}

foreach( $vol in (aws ec2 describe-volumes | ConvertFrom-Json).Volumes.VolumeId){
    aws ec2 delete-volume --volume-id $vol
}