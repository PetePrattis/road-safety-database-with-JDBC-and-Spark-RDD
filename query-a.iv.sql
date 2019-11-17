select distinct count(ai.accident_index)
from accident_information as ai, vehicle_information as vi
where ai.in_urban_area = 'No' and ai.date >= '2012-01-01' and ai.date < '2013-01-01' 
and ai.accident_index = vi.accident_index and vi.age_band_of_driver = '36 - 45'
