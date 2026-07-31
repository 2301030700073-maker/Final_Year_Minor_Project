package androidx.compose.ui.unit;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Dp implements Comparable {
    public final float value;

    /* renamed from: compareTo-0680j_4, reason: not valid java name */
    public static int m692compareTo0680j_4(float f, float f2) {
        if (Float.isNaN(f) || Float.isNaN(f2)) {
            return 0;
        }
        return Float.compare(f, f2);
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m693equalsimpl0(float f, float f2) {
        return Float.compare(f, f2) == 0;
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m694toStringimpl(float f) {
        if (Float.isNaN(f)) {
            return "Dp.Unspecified";
        }
        return f + ".dp";
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return m692compareTo0680j_4(this.value, ((Dp) obj).value);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Dp) {
            return Float.compare(this.value, ((Dp) obj).value) == 0;
        }
        return false;
    }

    public final int hashCode() {
        return Float.floatToIntBits(this.value);
    }

    public final String toString() {
        return m694toStringimpl(this.value);
    }
}
