cat bc-list.txt | while read line; do oc rollout latest dc/$line -n project1; done; 
