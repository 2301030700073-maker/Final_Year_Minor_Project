package androidx.compose.ui.text.style;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: Hyphens.kt */
/* loaded from: classes.dex */
public final class Hyphens {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int None = m2286constructorimpl(1);
    private static final int Auto = m2286constructorimpl(2);
    private static final int Unspecified = m2286constructorimpl(Integer.MIN_VALUE);

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ Hyphens m2285boximpl(int i) {
        return new Hyphens(i);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    private static int m2286constructorimpl(int i) {
        return i;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m2287equalsimpl(int i, Object obj) {
        return (obj instanceof Hyphens) && i == ((Hyphens) obj).m2291unboximpl();
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m2288equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m2289hashCodeimpl(int i) {
        return i;
    }

    public boolean equals(Object obj) {
        return m2287equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m2289hashCodeimpl(this.value);
    }

    /* renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m2291unboximpl() {
        return this.value;
    }

    /* compiled from: Hyphens.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getNone-vmbZdU8, reason: not valid java name */
        public final int m2293getNonevmbZdU8() {
            return Hyphens.None;
        }

        /* renamed from: getAuto-vmbZdU8, reason: not valid java name */
        public final int m2292getAutovmbZdU8() {
            return Hyphens.Auto;
        }

        /* renamed from: getUnspecified-vmbZdU8, reason: not valid java name */
        public final int m2294getUnspecifiedvmbZdU8() {
            return Hyphens.Unspecified;
        }
    }

    private /* synthetic */ Hyphens(int i) {
        this.value = i;
    }

    public String toString() {
        return m2290toStringimpl(this.value);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m2290toStringimpl(int i) {
        return m2288equalsimpl0(i, None) ? "Hyphens.None" : m2288equalsimpl0(i, Auto) ? "Hyphens.Auto" : m2288equalsimpl0(i, Unspecified) ? "Hyphens.Unspecified" : "Invalid";
    }
}
