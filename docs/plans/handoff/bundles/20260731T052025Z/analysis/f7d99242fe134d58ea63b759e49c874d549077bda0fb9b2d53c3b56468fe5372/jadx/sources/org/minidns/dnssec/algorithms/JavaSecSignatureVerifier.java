package org.minidns.dnssec.algorithms;

import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.Signature;
import org.minidns.record.DNSKEY;
import org.minidns.record.RRSIG;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class JavaSecSignatureVerifier {
    public final KeyFactory keyFactory;
    public final String signatureAlgorithm;

    public JavaSecSignatureVerifier(String str, String str2) {
        this.keyFactory = KeyFactory.getInstance(str);
        this.signatureAlgorithm = str2;
        Signature.getInstance(str2);
    }

    public abstract PublicKey getPublicKey(DNSKEY dnskey);

    public abstract byte[] getSignature(RRSIG rrsig);
}
