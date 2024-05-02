echo "Running experiments for DecByzPG"

for ENV in CartPole LunarLander ; do
    if [[ "$ENV" == "CartPole" ]]
    then
        LR="5e-4"
    else
        LR="1e-3"
    fi

    for S in 0 1 2 3 4 5 6 7 8 9; do
        start_time=$(date +%s)  # Record start time
        python run.py --lr $LR --env $ENV --num_workers 2 --num_byz 0 --agreement_type none --attack_type none --aggregation_type avg --seed $S
        python run.py --lr $LR --env $ENV --num_workers 6 --num_byz 0 --agreement_type none --attack_type none --aggregation_type avg --seed $S
        python run.py --lr $LR --env $ENV --num_workers 10 --num_byz 0 --agreement_type none --attack_type none --aggregation_type avg --seed $S
        python run.py --lr $LR --env $ENV --num_workers 14 --num_byz 0 --agreement_type mda --attack_type none --aggregation_type rfa --seed $S
        end_time=$(date +%s)  # Record end time
        idle_time=$((end_time - start_time))  # Calculate idle time
        echo "Experiment $ENV with $S workers (idle time: $idle_time seconds)"
    done

    #for ATCK in random_action random_unif_-1000_1000 avg_zero; do
    #    for S in 0 1 2 3 4 5 6 7 8 9; do
    #        start_time=$(date +%s)  # Record start time
    #        python run.py --lr $LR --env $ENV --num_workers 10 --num_byz 3 --agreement_type none --attack_type $ATCK --aggregation_type avg --seed $S
    #        python run.py --lr $LR --env $ENV --num_workers 14 --num_byz 3 --agreement_type mda --attack_type $ATCK --aggregation_type rfa --seed $S
    #        end_time=$(date +%s)  # Record end time
    #        idle_time=$((end_time - start_time))  # Calculate idle time
    #        echo "Experiment $ENV with $S workers and $ATCK attack (idle time: $idle_time seconds)"
    #    done
    #done
done

echo "Running experiments for ByzPG"
