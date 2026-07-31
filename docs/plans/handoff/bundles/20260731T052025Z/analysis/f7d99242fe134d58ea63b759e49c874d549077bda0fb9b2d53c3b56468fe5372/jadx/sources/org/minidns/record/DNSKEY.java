package org.minidns.record;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import org.minidns.constants.DnssecConstants;
import org.minidns.util.Base64;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DNSKEY extends Data {
    public final DnssecConstants.SignatureAlgorithm algorithm;
    public final byte algorithmByte;
    public final short flags;
    public final byte[] key;
    public transient Integer keyTag;
    public final byte protocol;

    public DNSKEY(short s, byte b, byte b2, byte[] bArr) {
        DnssecConstants.SignatureAlgorithm forByte = DnssecConstants.SignatureAlgorithm.forByte(b2);
        this.flags = s;
        this.protocol = b;
        this.algorithmByte = b2;
        this.algorithm = forByte == null ? DnssecConstants.SignatureAlgorithm.forByte(b2) : forByte;
        this.key = bArr;
    }

    public final DataInputStream getKeyAsDataInputStream() {
        return new DataInputStream(new ByteArrayInputStream(this.key));
    }

    public final int getKeyTag() {
        if (this.keyTag == null) {
            setBytes();
            byte[] bArr = (byte[]) this.bytes.clone();
            long j = 0;
            for (int i = 0; i < bArr.length; i++) {
                j += (i & 1) > 0 ? 255 & bArr[i] : (255 & bArr[i]) << 8;
            }
            this.keyTag = Integer.valueOf((int) ((j + ((j >> 16) & 65535)) & 65535));
        }
        return this.keyTag.intValue();
    }

    @Override // org.minidns.record.Data
    public final void serialize(DataOutputStream dataOutputStream) {
        dataOutputStream.writeShort(this.flags);
        dataOutputStream.writeByte(this.protocol);
        dataOutputStream.writeByte(this.algorithmByte);
        dataOutputStream.write(this.key);
    }

    public final String toString() {
        return ((int) this.flags) + ' ' + ((int) this.protocol) + ' ' + this.algorithm + ' ' + Base64.encodeToString(this.key);
    }
}
