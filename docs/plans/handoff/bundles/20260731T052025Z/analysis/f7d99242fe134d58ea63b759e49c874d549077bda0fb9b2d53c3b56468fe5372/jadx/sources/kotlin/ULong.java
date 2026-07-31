package kotlin;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ULong implements Comparable {
    public final long data;

    public /* synthetic */ ULong(long j) {
        this.data = j;
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m980hashCodeimpl(long j) {
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
        return m980hashCodeimpl(this.data);
    }

    public final String toString() {
        return ResultKt.ulongToString(10, this.data);
    }
}
