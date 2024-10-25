package weiver.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import org.springframework.context.annotation.PropertySource;
import software.amazon.awssdk.auth.credentials.AwsBasicCredentials;
import software.amazon.awssdk.auth.credentials.AwsCredentials;
import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.s3.S3Client;

@PropertySource("classpath:/application_aws.properties")
@Configuration 
public class AwsS3Config {

    @Value("${cloud.aws.region.static}")
    private String awsRegion;

    @Value("${cloud.aws.credentials.accessKey}")
    private String awsAccessKey;

    @Value("${{cloud.aws.credentials.secretKey}}")
    private String awsSecretKey;

    @Bean
    public S3Client s3Client() {
        AwsCredentials credentials = AwsBasicCredentials.create(awsAccessKey, awsSecretKey);

        return S3Client.builder()
                .region(Region.of(awsRegion))
                .credentialsProvider(() -> credentials)
                .build();
    }
}