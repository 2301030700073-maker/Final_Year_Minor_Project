package coil3.util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class IntPair {
    private final long value;

    private /* synthetic */ IntPair(long j) {
        this.value = j;
    }

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ IntPair m912boximpl(long j) {
        return new IntPair(j);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static long m913constructorimpl(int i, int i2) {
        return m914constructorimpl((i2 & 4294967295L) | (i << 32));
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m915equalsimpl(long j, Object obj) {
        return (obj instanceof IntPair) && j == ((IntPair) obj).m921unboximpl();
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m916equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* renamed from: getFirst-impl, reason: not valid java name */
    public static final int m917getFirstimpl(long j) {
        return (int) (j >> 32);
    }

    /* renamed from: getSecond-impl, reason: not valid java name */
    public static final int m918getSecondimpl(long j) {
        return (int) (j & 4294967295L);
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m919hashCodeimpl(long j) {
        return (int) (j ^ (j >>> 32));
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m920toStringimpl(long j) {
        return "IntPair(value=" + j + ")";
    }

    public boolean equals(Object obj) {
        return m915equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m919hashCodeimpl(this.value);
    }

    public String toString() {
        return m920toStringimpl(this.value);
    }

    /* renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m921unboximpl() {
        return this.value;
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    private static long m914constructorimpl(long j) {
        return j;
    }
}
