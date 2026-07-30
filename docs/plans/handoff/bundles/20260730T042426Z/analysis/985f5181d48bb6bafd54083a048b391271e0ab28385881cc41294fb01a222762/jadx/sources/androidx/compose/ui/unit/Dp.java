package androidx.compose.ui.unit;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: Dp.kt */
/* loaded from: classes.dex */
public final class Dp implements Comparable {
    public static final Companion Companion = new Companion(null);
    private static final float Hairline = m2424constructorimpl(0.0f);
    private static final float Infinity = m2424constructorimpl(Float.POSITIVE_INFINITY);
    private static final float Unspecified = m2424constructorimpl(Float.NaN);
    private final float value;

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ Dp m2422boximpl(float f) {
        return new Dp(f);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static float m2424constructorimpl(float f) {
        return f;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m2425equalsimpl(float f, Object obj) {
        return (obj instanceof Dp) && Float.compare(f, ((Dp) obj).m2430unboximpl()) == 0;
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m2426equalsimpl0(float f, float f2) {
        return Float.compare(f, f2) == 0;
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m2427hashCodeimpl(float f) {
        return Float.floatToIntBits(f);
    }

    public boolean equals(Object obj) {
        return m2425equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m2427hashCodeimpl(this.value);
    }

    /* renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ float m2430unboximpl() {
        return this.value;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return m2429compareTo0680j_4(((Dp) obj).m2430unboximpl());
    }

    private /* synthetic */ Dp(float f) {
        this.value = f;
    }

    /* renamed from: compareTo-0680j_4, reason: not valid java name */
    public static int m2423compareTo0680j_4(float f, float f2) {
        return Float.compare(f, f2);
    }

    /* renamed from: compareTo-0680j_4, reason: not valid java name */
    public int m2429compareTo0680j_4(float f) {
        return m2423compareTo0680j_4(this.value, f);
    }

    public String toString() {
        return m2428toStringimpl(this.value);
    }

    /* compiled from: Dp.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getHairline-D9Ej5fM, reason: not valid java name */
        public final float m2431getHairlineD9Ej5fM() {
            return Dp.Hairline;
        }

        /* renamed from: getInfinity-D9Ej5fM, reason: not valid java name */
        public final float m2432getInfinityD9Ej5fM() {
            return Dp.Infinity;
        }

        /* renamed from: getUnspecified-D9Ej5fM, reason: not valid java name */
        public final float m2433getUnspecifiedD9Ej5fM() {
            return Dp.Unspecified;
        }
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m2428toStringimpl(float f) {
        if (Float.isNaN(f)) {
            return "Dp.Unspecified";
        }
        return f + ".dp";
    }
}
