package org.minidns.dnssec.algorithms;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
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
public abstract class EcdsaSignatureVerifier extends JavaSecSignatureVerifier {
    public final int length;
    public final ECParameterSpec spec;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class P256SHA256 extends EcdsaSignatureVerifier {
        public static final BigInteger[] SPEC = {new BigInteger("FFFFFFFF00000001000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF", 16), new BigInteger("FFFFFFFF00000001000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFC", 16), new BigInteger("5AC635D8AA3A93E7B3EBBD55769886BC651D06B0CC53B0F63BCE3C3E27D2604B", 16), new BigInteger("6B17D1F2E12C4247F8BCE6E563A440F277037D812DEB33A0F4A13945D898C296", 16), new BigInteger("4FE342E2FE1A7F9B8EE7EB4A7C0F9E162BCE33576B315ECECBB6406837BF51F5", 16), new BigInteger("FFFFFFFF00000000FFFFFFFFFFFFFFFFBCE6FAADA7179E84F3B9CAC2FC632551", 16)};
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class P384SHA284 extends EcdsaSignatureVerifier {
        public static final BigInteger[] SPEC = {new BigInteger("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF0000000000000000FFFFFFFF", 16), new BigInteger("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF0000000000000000FFFFFFFC", 16), new BigInteger("B3312FA7E23EE7E4988E056BE3F82D19181D9C6EFE8141120314088F5013875AC656398D8A2ED19D2A85C8EDD3EC2AEF", 16), new BigInteger("AA87CA22BE8B05378EB1C71EF320AD746E1D3B628BA79B9859F741E082542A385502F25DBF55296C3A545E3872760AB7", 16), new BigInteger("3617DE4A96262C6F5D9E98BF9292DC29F8F41DBD289A147CE9DA3113B5F0B8C00A60B1CE1D7E819D7A431D7C90EA0E5F", 16), new BigInteger("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7634D81F4372DDF581A0DB248B0A77AECEC196ACCC52973", 16)};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EcdsaSignatureVerifier(BigInteger[] bigIntegerArr, int i, String str) {
        super("EC", str);
        ECParameterSpec eCParameterSpec = new ECParameterSpec(new EllipticCurve(new ECFieldFp(bigIntegerArr[0]), bigIntegerArr[1], bigIntegerArr[2]), new ECPoint(bigIntegerArr[3], bigIntegerArr[4]), bigIntegerArr[5], 1);
        this.length = i;
        this.spec = eCParameterSpec;
    }

    @Override // org.minidns.dnssec.algorithms.JavaSecSignatureVerifier
    public final PublicKey getPublicKey(DNSKEY dnskey) {
        int i = this.length;
        DataInputStream keyAsDataInputStream = dnskey.getKeyAsDataInputStream();
        try {
            byte[] bArr = new byte[i];
            keyAsDataInputStream.readFully(bArr);
            BigInteger bigInteger = new BigInteger(1, bArr);
            byte[] bArr2 = new byte[i];
            keyAsDataInputStream.readFully(bArr2);
            try {
                return this.keyFactory.generatePublic(new ECPublicKeySpec(new ECPoint(bigInteger, new BigInteger(1, bArr2)), this.spec));
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
        int i = this.length;
        rrsig.getClass();
        byte[] bArr = rrsig.signature;
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
        try {
            byte[] bArr2 = new byte[i];
            dataInputStream.readFully(bArr2);
            int i2 = bArr2[0] < 0 ? i + 1 : i;
            byte[] bArr3 = new byte[i];
            dataInputStream.readFully(bArr3);
            int i3 = bArr3[0] < 0 ? i + 1 : i;
            dataOutputStream.writeByte(48);
            dataOutputStream.writeByte(i2 + i3 + 4);
            dataOutputStream.writeByte(2);
            dataOutputStream.writeByte(i2);
            if (i2 > i) {
                dataOutputStream.writeByte(0);
            }
            dataOutputStream.write(bArr2);
            dataOutputStream.writeByte(2);
            dataOutputStream.writeByte(i3);
            if (i3 > i) {
                dataOutputStream.writeByte(0);
            }
            dataOutputStream.write(bArr3);
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            bArr.clone();
            throw new DnssecValidationFailedException$DataMalformedException(e);
        }
    }
}
