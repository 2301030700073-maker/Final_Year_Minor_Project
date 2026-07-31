package kotlin;

import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ULong implements Comparable {
    public final long data;

    public /* synthetic */ ULong(long j) {
        this.data = j;
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m658hashCodeimpl(long j) {
        return (int) (j ^ (j >>> 32));
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return Intrinsics.compare(this.data ^ Long.MIN_VALUE, ((ULong) obj).data ^ Long.MIN_VALUE);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ULong) {
            return this.data == ((ULong) obj).data;
        }
        return false;
    }

    public final int hashCode() {
        return m658hashCodeimpl(this.data);
    }

    public final String toString() {
        long j = this.data;
        if (j >= 0) {
            CharsKt.checkRadix(10);
            String l = Long.toString(j, 10);
            l.getClass();
            return l;
        }
        long j2 = ((j >>> 1) / 10) << 1;
        long j3 = j - (j2 * 10);
        if (j3 >= 10) {
            j3 -= 10;
            j2++;
        }
        CharsKt.checkRadix(10);
        String l2 = Long.toString(j2, 10);
        l2.getClass();
        CharsKt.checkRadix(10);
        String l3 = Long.toString(j3, 10);
        l3.getClass();
        return l2.concat(l3);
    }
}
