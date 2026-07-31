package app.k9mail.feature.account.server.certificate.domain.usecase;

import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.security.MessageDigest;
import java.security.cert.X509Certificate;
import java.text.DateFormat;
import okio.BlackholeSink;
import okio.ByteString;
import okio.HashingSink;
import okio.RealBufferedSink;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FormatServerCertificateError {
    public final DateFormat dateFormat;

    public FormatServerCertificateError() {
        DateFormat dateTimeInstance = DateFormat.getDateTimeInstance(1, 3);
        dateTimeInstance.getClass();
        this.dateFormat = dateTimeInstance;
    }

    public static ByteString computeFingerprint(X509Certificate x509Certificate, HashAlgorithm hashAlgorithm) {
        HashingSink hashingSink;
        int ordinal = hashAlgorithm.ordinal();
        if (ordinal == 0) {
            hashingSink = new HashingSink(new BlackholeSink(), "SHA-1");
        } else if (ordinal == 1) {
            hashingSink = new HashingSink(new BlackholeSink(), "SHA-256");
        } else {
            if (ordinal != 2) {
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return null;
            }
            hashingSink = new HashingSink(new BlackholeSink(), "SHA-512");
        }
        RealBufferedSink realBufferedSink = new RealBufferedSink(hashingSink);
        byte[] encoded = x509Certificate.getEncoded();
        encoded.getClass();
        realBufferedSink.write(encoded);
        realBufferedSink.flush();
        MessageDigest messageDigest = hashingSink.messageDigest;
        messageDigest.getClass();
        byte[] digest = messageDigest.digest();
        digest.getClass();
        return new ByteString(digest);
    }
}
