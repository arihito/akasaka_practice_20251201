members =  {'John', 'Alice', 'Bob', 'Diana'}
members.add('Eve')
print(members)
members.remove('Alice')
print(members)
new_members = {'Frank', 'Diana', 'Grace'}
print(f'新メンバー：{new_members}')
# members.union(new_members)
all_members = members | new_members
print(f'和集合：{all_members}')
# members.intersection(new_members)
common_members = members & new_members
print(f'積集合：{common_members}')
# members.difference(new_members)
exclusive_members = members - new_members
print(f'差集合：{exclusive_members}')

