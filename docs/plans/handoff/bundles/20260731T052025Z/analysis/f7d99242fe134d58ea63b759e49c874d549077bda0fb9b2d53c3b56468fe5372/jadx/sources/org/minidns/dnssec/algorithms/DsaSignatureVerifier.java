package org.minidns.dnssec.algorithms;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.spec.DSAPublicKeySpec;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.RSAPublicKeySpec;
import org.minidns.dnssec.DnssecValidationFailedException$DataMalformedException;
import org.minidns.record.DNSKEY;
import org.minidns.record.RRSIG;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DsaSignatureVerifier extends JavaSecSignatureVerifier {
    public final /* synthetic */ int $r8$classId = 1;

    public DsaSignatureVerifier(String str) {
        super("RSA", str);
    }

    @Override // org.minidns.dnssec.algorithms.JavaSecSignatureVerifier
    public final PublicKey getPublicKey(DNSKEY dnskey) {
        int i;
        int i2 = this.$r8$classId;
        KeyFactory keyFactory = this.keyFactory;
        switch (i2) {
            case 0:
                DataInputStream keyAsDataInputStream = dnskey.getKeyAsDataInputStream();
                try {
                    int readUnsignedByte = keyAsDataInputStream.readUnsignedByte();
                    byte[] bArr = new byte[20];
                    keyAsDataInputStream.readFully(bArr);
                    BigInteger bigInteger = new BigInteger(1, bArr);
                    int i3 = (readUnsignedByte * 8) + 64;
                    byte[] bArr2 = new byte[i3];
                    keyAsDataInputStream.readFully(bArr2);
                    BigInteger bigInteger2 = new BigInteger(1, bArr2);
                    byte[] bArr3 = new byte[i3];
                    keyAsDataInputStream.readFully(bArr3);
                    BigInteger bigInteger3 = new BigInteger(1, bArr3);
                    byte[] bArr4 = new byte[i3];
                    keyAsDataInputStream.readFully(bArr4);
                    try {
                        return keyFactory.generatePublic(new DSAPublicKeySpec(new BigInteger(1, bArr4), bigInteger2, bigInteger, bigInteger3));
                    } catch (InvalidKeySpecException e) {
                        throw new DnssecValidationFailedException$DataMalformedException(e);
                    }
                } catch (IOException e2) {
                    dnskey.key.clone();
                    throw new DnssecValidationFailedException$DataMalformedException(e2);
                }
            default:
                byte[] bArr5 = dnskey.key;
                DataInputStream keyAsDataInputStream2 = dnskey.getKeyAsDataInputStream();
                try {
                    int readUnsignedByte2 = keyAsDataInputStream2.readUnsignedByte();
                    if (readUnsignedByte2 == 0) {
                        readUnsignedByte2 = keyAsDataInputStream2.readUnsignedShort();
                        i = 3;
                    } else {
                        i = 1;
                    }
                    byte[] bArr6 = new byte[readUnsignedByte2];
                    keyAsDataInputStream2.readFully(bArr6);
                    int i4 = i + readUnsignedByte2;
                    BigInteger bigInteger4 = new BigInteger(1, bArr6);
                    byte[] bArr7 = new byte[bArr5.length - i4];
                    keyAsDataInputStream2.readFully(bArr7);
                    try {
                        return keyFactory.generatePublic(new RSAPublicKeySpec(new BigInteger(1, bArr7), bigInteger4));
                    } catch (InvalidKeySpecException e3) {
                        throw new DnssecValidationFailedException$DataMalformedException(e3);
                    }
                } catch (IOException e4) {
                    bArr5.clone();
                    throw new DnssecValidationFailedException$DataMalformedException(e4);
                }
        }
    }

    @Override // org.minidns.dnssec.algorithms.JavaSecSignatureVerifier
    public final byte[] getSignature(RRSIG rrsig) {
        int i;
        int i2;
        int i3;
        int i4;
        switch (this.$r8$classId) {
            case 0:
                rrsig.getClass();
                byte[] bArr = rrsig.signature;
                DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
                try {
                    dataInputStream.readByte();
                    byte[] bArr2 = new byte[20];
                    dataInputStream.readFully(bArr2);
                    byte b = bArr2[0];
                    if (b == 0) {
                        i2 = 0;
                        while (i2 < 20 && bArr2[i2] == 0) {
                            i2++;
                        }
                        i = 20 - i2;
                    } else if (b < 0) {
                        i2 = 0;
                        i = 21;
                    } else {
                        i = 20;
                        i2 = 0;
                    }
                    byte[] bArr3 = new byte[20];
                    dataInputStream.readFully(bArr3);
                    byte b2 = bArr3[0];
                    if (b2 == 0) {
                        i4 = 0;
                        while (i4 < 20 && bArr3[i4] == 0) {
                            i4++;
                        }
                        i3 = 20 - i4;
                    } else {
                        i3 = b2 >= 0 ? 20 : 21;
                        i4 = 0;
                    }
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
                    dataOutputStream.writeByte(48);
                    dataOutputStream.writeByte(i + i3 + 4);
                    dataOutputStream.writeByte(2);
                    dataOutputStream.writeByte(i);
                    if (i > 20) {
                        dataOutputStream.writeByte(0);
                    }
                    dataOutputStream.write(bArr2, i2, 20 - i2);
                    dataOutputStream.writeByte(2);
                    dataOutputStream.writeByte(i3);
                    if (i3 > 20) {
                        dataOutputStream.writeByte(0);
                    }
                    dataOutputStream.write(bArr3, i4, 20 - i4);
                    return byteArrayOutputStream.toByteArray();
                } catch (IOException e) {
                    bArr.clone();
                    throw new DnssecValidationFailedException$DataMalformedException(e);
                }
            default:
                return (byte[]) rrsig.signature.clone();
        }
    }

    public /* synthetic */ DsaSignatureVerifier(String str, String str2) {
        super(str, str2);
    }
}
