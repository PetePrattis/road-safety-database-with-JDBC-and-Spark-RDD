import org.apache.spark.SparkConf;
import org.apache.spark.api.java.JavaPairRDD;
import org.apache.spark.api.java.JavaRDD;
import org.apache.spark.api.java.JavaSparkContext;

import scala.Tuple2;

public class Dataset2 {
	
	
	public static void main(String[] args){
		System.setProperty("hadoop.home.dir", "C:/winutils");
		SparkConf conf = new SparkConf().setAppName("JavaStatusAPIDemo").setMaster("local[*]"); 
		JavaSparkContext jsc = new JavaSparkContext(conf);
			
		JavaRDD<String> data = jsc.textFile(System.getProperty("user.dir")+"/src/db2_Accident_Information.csv")
				  .mapPartitionsWithIndex((index, iter) -> {
		                if (index == 0 && iter.hasNext()) {
		                    iter.next();
		                    if (iter.hasNext()) {
		                        iter.next();
		                    }
		                }
		     return iter;
		   }, true);;

		 //program calculates count of accidents per road class
		JavaPairRDD<String, Integer> pair = data.mapToPair(s -> {
			String[] foo= s.split(",");
			return new Tuple2<>(foo[2], 1);
		});
		
		JavaPairRDD<String, Integer> result = pair.reduceByKey((x, y) -> (x+y));

		result.foreach(x->System.out.println(x));
		
        
		jsc.close();


	}

}