package kafka.tutorial1;

//import com.sun.org.slf4j.internal.LoggerFactory;
import org.apache.kafka.clients.producer.*;
import org.apache.kafka.common.serialization.StringSerializer;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.Properties;

public class ProducerDemoWithCallback {
    public static void main(String[] args) {
        
        Logger logger = LoggerFactory.getLogger(ProducerDemoWithCallback.class);

        // create Producer properties
        Properties properties = new Properties();
        String bootstrapServers = "192.168.1.139:9092";
        //properties.setProperty("bootstrap.servers", bootstrapServers);
        properties.setProperty(ProducerConfig.BOOTSTRAP_SERVERS_CONFIG, bootstrapServers);
        //properties.setProperty("key.serializer", StringSerializer.class.getName());
        properties.setProperty(ProducerConfig.KEY_SERIALIZER_CLASS_CONFIG, StringSerializer.class.getName());
        //properties.setProperty("value.serializer",StringSerializer.class.getName());
        properties.setProperty(ProducerConfig.VALUE_SERIALIZER_CLASS_CONFIG,StringSerializer.class.getName());

        // create the producer
        KafkaProducer<String, String> producer = new KafkaProducer<String, String>(properties);

        for (int i=0; i < 10; i++) {
            // create a producer record
            ProducerRecord<String, String> record = new ProducerRecord<String, String>("first_topic", "hello universe! " + Integer.toString(i));

            // send data -- asynchronous
            producer.send(record, new Callback() {
                @Override
                public void onCompletion(RecordMetadata recordMetadata, Exception e) {
                    // executes everytime when record is successfully sent or an exception is thrown
                    if (e == null) {
                        // the record is successfully sent
                        logger.info("Received new metadata. \n" +
                                "Topic:" + recordMetadata.topic() + "\n" +
                                "Partition:" + recordMetadata.partition() + "\n" +
                                "Offset:" + recordMetadata.offset() + "\n" +
                                "Timestamp:" + recordMetadata.timestamp());

                    } else {
                        logger.error("Error while producing", e);
                    }
                }
            });
        }
        // flush data
        producer.flush();

        // flush and close producer
        producer.close();
    }
}
