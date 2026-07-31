package okhttp3.tls.internal;

import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.List;
import javax.net.ssl.X509TrustManager;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class InsecureAndroidTrustManager implements X509TrustManager {
    public final X509TrustManager delegate;

    public InsecureAndroidTrustManager(X509TrustManager x509TrustManager, List list) {
        this.delegate = x509TrustManager;
        try {
            x509TrustManager.getClass().getMethod("checkServerTrusted", X509Certificate[].class, String.class, String.class);
        } catch (NoSuchMethodException unused) {
        }
    }

    @Override // javax.net.ssl.X509TrustManager
    public final void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
        x509CertificateArr.getClass();
        throw new CertificateException("Unsupported operation");
    }

    @Override // javax.net.ssl.X509TrustManager
    public final void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
        x509CertificateArr.getClass();
        str.getClass();
        throw new CertificateException("Unsupported operation");
    }

    @Override // javax.net.ssl.X509TrustManager
    public final X509Certificate[] getAcceptedIssuers() {
        X509Certificate[] acceptedIssuers = this.delegate.getAcceptedIssuers();
        acceptedIssuers.getClass();
        return acceptedIssuers;
    }
}
