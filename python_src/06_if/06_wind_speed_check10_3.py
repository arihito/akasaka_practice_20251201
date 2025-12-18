wind_speed = float(input('風速を入力してください -> '))
print(
    '微風' if wind_speed < 1.5 else (
    '弱風' if wind_speed < 4.0 else (
    '中風' if wind_speed < 8.0 else '強風'
)))