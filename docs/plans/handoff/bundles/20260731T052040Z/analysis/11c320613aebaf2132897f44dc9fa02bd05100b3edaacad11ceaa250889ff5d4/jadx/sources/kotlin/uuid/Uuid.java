package kotlin.uuid;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import kotlin.text.StringsKt__StringsJVMKt;
import okio.Okio;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Uuid implements Comparable, Serializable {
    public static final Uuid NIL = new Uuid(0, 0);
    private final long leastSignificantBits;
    private final long mostSignificantBits;

    public Uuid(long j, long j2) {
        this.mostSignificantBits = j;
        this.leastSignificantBits = j2;
    }

    private final void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization is supported via proxy only");
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        Uuid uuid = (Uuid) obj;
        uuid.getClass();
        long j = this.mostSignificantBits;
        long j2 = uuid.mostSignificantBits;
        if (j != j2) {
            return Long.compare(j ^ Long.MIN_VALUE, j2 ^ Long.MIN_VALUE);
        }
        return Long.compare(this.leastSignificantBits ^ Long.MIN_VALUE, uuid.leastSignificantBits ^ Long.MIN_VALUE);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Uuid)) {
            return false;
        }
        Uuid uuid = (Uuid) obj;
        return this.mostSignificantBits == uuid.mostSignificantBits && this.leastSignificantBits == uuid.leastSignificantBits;
    }

    public final int hashCode() {
        long j = this.mostSignificantBits ^ this.leastSignificantBits;
        return (int) (j ^ (j >>> 32));
    }

    public final String toString() {
        byte[] bArr = new byte[36];
        Okio.formatBytesInto(this.mostSignificantBits, bArr, 0, 0, 4);
        bArr[8] = 45;
        Okio.formatBytesInto(this.mostSignificantBits, bArr, 9, 4, 6);
        bArr[13] = 45;
        Okio.formatBytesInto(this.mostSignificantBits, bArr, 14, 6, 8);
        bArr[18] = 45;
        Okio.formatBytesInto(this.leastSignificantBits, bArr, 19, 0, 2);
        bArr[23] = 45;
        Okio.formatBytesInto(this.leastSignificantBits, bArr, 24, 2, 8);
        return StringsKt__StringsJVMKt.decodeToString(bArr);
    }
}
