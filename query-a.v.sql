select vi.manufacturer, count(ai.accident_index)
from accident_information ai, vehicle_information vi
where  ai.id=vi.id and ai.year >= 2010 and ai.year <= 2012
and vi.age_band_of_driver = '26 - 35' and ai.road_class ='A'
group by vi.manufacturer
having count(ai.accident_index) = (select max(C) from (select count(ai.accident_index) as C from accident_information ai, vehicle_information vi
													   	where  ai.id=vi.id and ai.year >= 2010 and ai.year <= 2012
														and vi.age_band_of_driver = '26 - 35' and ai.road_class ='A'
														group by vi.manufacturer) as Q)