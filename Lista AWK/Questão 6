{
	acc=0
	for( i=1; i<=NF; i++ )
	{
		if( $i ~ /[0-9]+/ ) acc+=$i;
	}

	if( acc/3.0 >= 70 )
	{
		
    for( a=1; a<=NF; a++ )
		{
			if( $a ~ /[^0-9]+/ ) printf $a" ";
		}
		printf "\n";
	}
}
