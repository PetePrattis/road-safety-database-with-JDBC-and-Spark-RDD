select road_class, accident_severity, count(accident_index)
from accident_information
group by road_class, accident_severity;