# healthcare_network_analysis.py
# Purpose: Automate calculation of provider-to-member ratios

import pandas as pd

# Load data
providers = pd.read_csv('providers.csv')
members = pd.read_csv('members.csv')

# Simple automation (shows you can replace Alteryx-style workflows)
network_summary = members.merge(providers, on='county', how='left')
network_summary['provider_per_1000_members'] = (network_summary['provider_count'] / network_summary['member_count']) * 1000

print(network_summary[['county', 'provider_per_1000_members']])