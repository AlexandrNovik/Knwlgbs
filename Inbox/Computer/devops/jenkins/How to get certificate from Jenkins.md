First, identify correct Jenkins home directory. Go to "Manage Jenkins" and then "System Information". Find a value of JENKINS_HOME.

Next, log in to Jenkins via SSH and go to that directory. A file named credentials.xml will contain your secrets.

Find the ID of you certificate (e.g. in the URL):

Finally, fire up a scripting console of your Jenkins instance (available at /script URL or via "Manage Jenkins" -> "Script Console") and execute this script:
```
import com.cloudbees.plugins.credentials.*
import hudson.security.*
import java.security.*
import javax.xml.bind.DatatypeConverter
defcreds=CredentialsMatchers
                .firstOrNull(
                        CredentialsProvider
                            .lookupCredentials(
                                Credentials.class,
                                Jenkins.getActiveInstance(),
                                ACL.SYSTEM,
                                Collections.emptyList()
                            ),
                        CredentialsMatchers.withId("9X9X99XX-XX9X-9X99-9X9X-9X9X9999XXX9")
                )
// This will print a decrypted passworddefpassword=creds.password
println password
// This will print all the available aliasescreds.keyStore.aliases().each { println it }
// Imagine, the alias you need is myapp.// Get JVM representation of you certificate and keydefcert=creds.keyStore.getEntry("myapp", newKeyStore.PasswordProtection(password.toCharArray())).certificate
defprivKey=creds.keyStore.getEntry("myapp", newKeyStore.PasswordProtection(password.toCharArray())).privateKey
// Format certificate and keycertpem = "-----BEGIN CERTIFICATE-----\n"+
        DatatypeConverter.printBase64Binary(cert.encoded) +
        "\n-----END CERTIFICATE-----\n";
keypem  = "-----BEGIN RSA PRIVATE KEY-----\n"+
        DatatypeConverter.printBase64Binary(privKey.encoded) +
        "\n-----END RSA PRIVATE KEY-----\n";
// Print themprintln certpem
println keypem
```

BTW, you can find your encoded credentials by ID in credentials.xml in Jenins home. It should look like:
```
<com.cloudbees.plugins.credentials.impl.CertificateCredentialsImpl><scope>GLOBAL</scope><id>9X9X99XX-XX9X-9X99-9X9X-9X9X9999XXX9</id><description>App signing certificate</description><keyStoreSourceclass="com.cloudbees.plugins.credentials.impl.CertificateCredentialsImpl$UploadedKeyStoreSource"><uploadedKeystoreBytes>{ENCRYPTED_CERTIFICATE}</uploadedKeystoreBytes></keyStoreSource><password>{ENCRYPTED_PASSWORD}</password></com.cloudbees.plugins.credentials.impl.CertificateCredentialsImpl>
```