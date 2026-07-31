package org.minidns.dnssec.algorithms;

import java.io.DataInputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.PublicKey;
import java.security.spec.ECFieldFp;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.ECPublicKeySpec;
import java.security.spec.EllipticCurve;
import java.security.spec.InvalidKeySpecException;
import org.minidns.dnssec.DnssecValidationFailedException$DataMalformedException;
import org.minidns.record.DNSKEY;
import org.minidns.record.RRSIG;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class EcgostSignatureVerifier extends JavaSecSignatureVerifier {
    public static final ECParameterSpec SPEC = new ECParameterSpec(new EllipticCurve(new ECFieldFp(new BigInteger("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD97", 16)), new BigInteger("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD94", 16), new BigInteger("A6", 16)), new ECPoint(BigInteger.ONE, new BigInteger("8D91E471E0989CDA27DF505A453F2B7635294F2DDF23E3B122ACC99C9E9F1E14", 16)), new BigInteger("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6C611070995AD10045841B09B761B893", 16), 1);

    @Override // org.minidns.dnssec.algorithms.JavaSecSignatureVerifier
    public final PublicKey getPublicKey(DNSKEY dnskey) {
        DataInputStream keyAsDataInputStream = dnskey.getKeyAsDataInputStream();
        try {
            byte[] bArr = new byte[32];
            keyAsDataInputStream.readFully(bArr);
            for (int i = 0; i < 16; i++) {
                int i2 = 31 - i;
                byte b = bArr[i];
                bArr[i] = bArr[i2];
                bArr[i2] = b;
            }
            BigInteger bigInteger = new BigInteger(1, bArr);
            byte[] bArr2 = new byte[32];
            keyAsDataInputStream.readFully(bArr2);
            for (int i3 = 0; i3 < 16; i3++) {
                int i4 = 31 - i3;
                byte b2 = bArr2[i3];
                bArr2[i3] = bArr2[i4];
                bArr2[i4] = b2;
            }
            try {
                return this.keyFactory.generatePublic(new ECPublicKeySpec(new ECPoint(bigInteger, new BigInteger(1, bArr2)), SPEC));
            } catch (InvalidKeySpecException e) {
                throw new DnssecValidationFailedException$DataMalformedException(e);
            }
        } catch (IOException e2) {
            dnskey.key.clone();
            throw new DnssecValidationFailedException$DataMalformedException(e2);
        }
    }

    @Override // org.minidns.dnssec.algorithms.JavaSecSignatureVerifier
    public final byte[] getSignature(RRSIG rrsig) {
        return (byte[]) rrsig.signature.clone();
    }
}
