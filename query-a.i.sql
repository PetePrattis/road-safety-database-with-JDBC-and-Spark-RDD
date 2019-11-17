select road_class, count(accident_index) as count
from accident_information
group by road_class;