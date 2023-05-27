import json, re

emi_file = '../emi.json'
tag_file = '../config/openloader/data/emi_auto_config/data/c/tags/items/modpack_hidden_items.json'
item_id_regex = 'item:([a-z1-9_]+\:[a-z1-9_/]+)(?:{.+})?'

# ############################################################ CONFIG ############################################################

def main():
	transpose_emi_data()

def transpose_emi_data():
	emi_data = {}
	hidden_stacks = []

	with open(emi_file, 'r', encoding='utf-8') as f:
		emi_data = json.load(f)

		for s in emi_data['hidden_stacks']:
			match = re.search(item_id_regex, s)
			if match:
				group = match.group(1)
				hidden_stacks.append(group)

	with open(tag_file, 'r', encoding='utf-8') as f:
		data = json.load(f)
		values = data['values']
		hidden_stacks += values

	emi_data['favorites'] = []
	emi_data['lookup_history'] = []
	emi_data['craft_history'] = []
	emi_data['hidden_stacks'] = []

	out_data = {
		"replace": False,
		"values": hidden_stacks
	}

	with open(emi_file, 'w', encoding='utf-8') as f:
		json.dump(emi_data, f, indent=4)

	with open(tag_file, 'w+', encoding='utf-8') as f:
		json.dump(out_data, f, indent=4)

##################################################################################################################################

if __name__ == '__main__':
	main()