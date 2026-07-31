package org.minidns.record;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.util.Locale;
import org.minidns.constants.DnssecConstants;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class DelegatingDnssecRR extends Data {
    public final DnssecConstants.SignatureAlgorithm algorithm;
    public final byte algorithmByte;
    public final byte[] digest;
    public transient BigInteger digestBigIntCache;
    public transient String digestHexCache;
    public final DnssecConstants.DigestAlgorithm digestType;
    public final byte digestTypeByte;
    public final int keyTag;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SharedData {
        public final byte algorithm;
        public final byte[] digest;
        public final byte digestType;
        public final int keyTag;

        public SharedData(byte b, byte b2, int i, byte[] bArr) {
            this.keyTag = i;
            this.algorithm = b;
            this.digestType = b2;
            this.digest = bArr;
        }
    }

    public DelegatingDnssecRR(byte b, byte b2, int i, byte[] bArr) {
        this.keyTag = i;
        this.algorithmByte = b;
        this.algorithm = DnssecConstants.SignatureAlgorithm.forByte(b);
        this.digestTypeByte = b2;
        DnssecConstants.DigestAlgorithm digestAlgorithm = DnssecConstants.DigestAlgorithm.SHA1;
        this.digestType = (DnssecConstants.DigestAlgorithm) DnssecConstants.DELEGATION_DIGEST_LUT.get(Byte.valueOf(b2));
        this.digest = bArr;
    }

    public static SharedData parseSharedData(DataInputStream dataInputStream, int i) {
        int readUnsignedShort = dataInputStream.readUnsignedShort();
        byte readByte = dataInputStream.readByte();
        byte readByte2 = dataInputStream.readByte();
        int i2 = i - 4;
        byte[] bArr = new byte[i2];
        if (dataInputStream.read(bArr) == i2) {
            return new SharedData(readByte, readByte2, readUnsignedShort, bArr);
        }
        throw new IOException();
    }

    @Override // org.minidns.record.Data
    public final void serialize(DataOutputStream dataOutputStream) {
        dataOutputStream.writeShort(this.keyTag);
        dataOutputStream.writeByte(this.algorithmByte);
        dataOutputStream.writeByte(this.digestTypeByte);
        dataOutputStream.write(this.digest);
    }

    public final String toString() {
        return this.keyTag + ' ' + this.algorithm + ' ' + this.digestType + ' ' + new BigInteger(1, this.digest).toString(16).toUpperCase(Locale.ROOT);
    }
}
