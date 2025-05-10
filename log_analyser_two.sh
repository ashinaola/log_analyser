#!/bin/bash

# Top 5 IP addresses with the most requests
echo "Top 5 IP Addresses (count address):"
cut -d ' ' -f1 nginx-access.log | uniq -c | sort -n | tail -5
printf "\n"

# Top 5 most requested paths
echo "Top 5 requested paths (count path):"
grep -oP '"GET \K[^"]*(?= HTTP)' nginx-access.log | cut -d' ' -f1 | sort | uniq -c | sort -nr | head -5
printf "\n"

# Top 5 response status codes
echo "Top 5 response status codes (count status):"
cut -d ' ' -f9 nginx-access.log | uniq -c | sort -n | tail -5
printf "\n"

# Top 5 user agents
echo "Top 5 user agents (count agent):"
cut -d ' ' -f12 nginx-access.log | uniq -c | sort -n | tail -5
