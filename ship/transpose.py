import json, re

emi_file = '../emi.json'
tag_file = '../config/openloader/data/musketeer_data/data/musketeer/tags/items/hidden_items.json'
hidden_file = '../config/openloader/resources/musketeer_resources/assets/emi/index/stacks/hidden_items.json'
item_id_regex = '^item:([a-z1-9_]+\:[a-z1-9_/]+)$'

# ############################################################ CONFIG ############################################################

def main():
	transpose_emi_data()

def transpose_emi_data():
	emi_data = {}

	tag_stacks = []
	hidden_stacks = []

	with open(emi_file, 'r', encoding='utf-8') as f:
		emi_data = json.load(f)

		hidden_stacks += emi_data['hidden_stacks']
		for s in emi_data['hidden_stacks']:
			match = re.search(item_id_regex, s)
			if match:
				group = match.group(1)

				if not '_spawn_egg' in group:
					tag_stacks.append(group)

	with open(tag_file, 'r', encoding='utf-8') as f:
		data = json.load(f)
		values = data['values']
		tag_stacks += values

	with open(hidden_file, 'r', encoding='utf-8') as f:
		data = json.load(f)
		values = data['removed']
		hidden_stacks += values

	emi_data['favorites'] = []
	emi_data['lookup_history'] = []
	emi_data['craft_history'] = []
	emi_data['hidden_stacks'] = []

	tag_out_data = {
		"replace": False,
		"values": tag_stacks
	}

	hidden_out_data = {
		"added": [],
		"removed": hidden_stacks
	}

	with open(emi_file, 'w', encoding='utf-8') as f:
		json.dump(emi_data, f, indent=4)

	with open(tag_file, 'w+', encoding='utf-8') as f:
		json.dump(tag_out_data, f, indent=4)

	with open(hidden_file, 'w+', encoding='utf-8') as f:
		json.dump(hidden_out_data, f, indent=4)

##################################################################################################################################

if __name__ == '__main__':
	main()