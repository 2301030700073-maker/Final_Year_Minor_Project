package okhttp3.tls;

import java.security.KeyPair;
import java.security.cert.X509Certificate;
import java.util.regex.Pattern;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class HeldCertificate {
    public final X509Certificate certificate;
    public final KeyPair keyPair;

    static {
        Pattern.compile("-----BEGIN ([!-,.-~ ]*)-----([^-]*)-----END \\1-----").getClass();
    }

    public HeldCertificate(KeyPair keyPair, X509Certificate x509Certificate) {
        this.keyPair = keyPair;
        this.certificate = x509Certificate;
    }
}
