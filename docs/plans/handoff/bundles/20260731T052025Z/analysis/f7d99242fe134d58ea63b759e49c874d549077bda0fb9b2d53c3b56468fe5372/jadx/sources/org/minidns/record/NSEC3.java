package org.minidns.record;

import java.io.DataOutputStream;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import kotlin.ranges.RangesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.minidns.record.Record;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NSEC3 extends Data {
    public static final HashMap HASH_ALGORITHM_LUT = new HashMap();
    public final byte flags;
    public final HashAlgorithm hashAlgorithm;
    public final byte hashAlgorithmByte;
    public final int iterations;
    public final byte[] nextHashed;
    public final byte[] salt;
    public final byte[] typeBitmap;
    public final ArrayList types;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public enum HashAlgorithm {
        /* JADX INFO: Fake field, exist only in values array */
        RESERVED(0),
        SHA1(1);

        HashAlgorithm(int i) {
            if (i < 0 || i > 255) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1();
                throw null;
            }
            NSEC3.HASH_ALGORITHM_LUT.put(Byte.valueOf((byte) i), this);
        }
    }

    public NSEC3(byte b, byte b2, int i, byte[] bArr, byte[] bArr2, ArrayList arrayList) {
        this.hashAlgorithmByte = b;
        HashAlgorithm hashAlgorithm = HashAlgorithm.SHA1;
        this.hashAlgorithm = (HashAlgorithm) HASH_ALGORITHM_LUT.get(Byte.valueOf(b));
        this.flags = b2;
        this.iterations = i;
        this.salt = bArr;
        this.nextHashed = bArr2;
        this.types = arrayList;
        this.typeBitmap = NSEC.createTypeBitMap(arrayList);
    }

    @Override // org.minidns.record.Data
    public final void serialize(DataOutputStream dataOutputStream) {
        dataOutputStream.writeByte(this.hashAlgorithmByte);
        dataOutputStream.writeByte(this.flags);
        dataOutputStream.writeShort(this.iterations);
        byte[] bArr = this.salt;
        dataOutputStream.writeByte(bArr.length);
        dataOutputStream.write(bArr);
        byte[] bArr2 = this.nextHashed;
        dataOutputStream.writeByte(bArr2.length);
        dataOutputStream.write(bArr2);
        dataOutputStream.write(this.typeBitmap);
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
        sb.append(' ');
        sb.append(RangesKt.encodeToString(this.nextHashed));
        Iterator it = this.types.iterator();
        while (it.hasNext()) {
            Record.TYPE type = (Record.TYPE) it.next();
            sb.append(' ');
            sb.append(type);
        }
        return sb.toString();
    }
}
