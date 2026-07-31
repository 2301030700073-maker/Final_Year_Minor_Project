package org.minidns.record;

import java.io.DataOutputStream;
import java.math.BigInteger;
import java.util.Locale;
import org.minidns.record.NSEC3;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NSEC3PARAM extends Data {
    public final byte flags;
    public final NSEC3.HashAlgorithm hashAlgorithm;
    public final byte hashAlgorithmByte;
    public final int iterations;
    public final byte[] salt;

    public NSEC3PARAM(byte b, byte b2, int i, byte[] bArr) {
        this.hashAlgorithmByte = b;
        NSEC3.HashAlgorithm hashAlgorithm = NSEC3.HashAlgorithm.SHA1;
        this.hashAlgorithm = (NSEC3.HashAlgorithm) NSEC3.HASH_ALGORITHM_LUT.get(Byte.valueOf(b));
        this.flags = b2;
        this.iterations = i;
        this.salt = bArr;
    }

    @Override // org.minidns.record.Data
    public final void serialize(DataOutputStream dataOutputStream) {
        dataOutputStream.writeByte(this.hashAlgorithmByte);
        dataOutputStream.writeByte(this.flags);
        dataOutputStream.writeShort(this.iterations);
        byte[] bArr = this.salt;
        dataOutputStream.writeByte(bArr.length);
        dataOutputStream.write(bArr);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.hashAlgorithm);
        sb.append(' ');
        sb.append((int) this.flags);
        sb.append(' ');
        sb.append(this.iterations);
        sb.append(' ');
        byte[] bArr = this.salt;
        sb.append(bArr.length == 0 ? "-" : new BigInteger(1, bArr).toString(16).toUpperCase(Locale.ROOT));
        return sb.toString();
    }
}
