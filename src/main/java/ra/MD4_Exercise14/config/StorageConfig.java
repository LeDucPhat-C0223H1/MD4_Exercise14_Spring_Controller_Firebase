package ra.MD4_Exercise14.config;

import com.google.auth.oauth2.GoogleCredentials;
import com.google.cloud.storage.Storage;
import com.google.cloud.storage.StorageOptions;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;

@Configuration
public class StorageConfig {
    private final String uploadFirebaseConfigPath = "C:\\Users\\BenLaptop\\Desktop\\New folder\\MD4_Exercise14_Spring_Controller_Firebase\\src\\main\\resources\\demofirebase-67860-firebase.json";

    @Bean
    public Storage storage() throws IOException {
        InputStream inputStream = Files.newInputStream(Paths.get(uploadFirebaseConfigPath));
        return StorageOptions.newBuilder()
                .setCredentials(GoogleCredentials.fromStream(inputStream))
                .build()
                .getService();
    }
}
