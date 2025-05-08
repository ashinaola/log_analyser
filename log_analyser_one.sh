#!/bin/bash

# Top 5 IP addresses with the most requests
echo "Top 5 IP Addresses (count address):"
cat nginx-access.log | awk '{freq[$1]++} END {for (x in freq) {print freq[x], x}}' | sort -n | tail -5
printf "\n"

# Top 5 most requested paths
echo "Top 5 requested paths (count path):"
cat nginx-access.log | awk '{freq[$7]++} END {for (x in freq) {print freq[x], x}}' | sort -n | tail -5
printf "\n"

# Top 5 response status codes
echo "Top 5 response status codes (count status):"
cat nginx-access.log | awk '{freq[$9]++} END {for (x in freq) {print freq[x], x}}' | sort -n | tail -5
printf "\n"

# Top 5 user agents
echo "Top 5 user agents (count agent)"
cat nginx-access.log | awk '{freq[$12]++} END {for (x in freq) {print freq[x], x}}' | sort -n | tail -5