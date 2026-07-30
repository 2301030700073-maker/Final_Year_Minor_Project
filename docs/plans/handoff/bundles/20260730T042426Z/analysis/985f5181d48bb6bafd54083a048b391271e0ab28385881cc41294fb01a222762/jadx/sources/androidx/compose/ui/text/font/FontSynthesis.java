package androidx.compose.ui.text.font;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: FontSynthesis.kt */
/* loaded from: classes.dex */
public final class FontSynthesis {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int None = m2170constructorimpl(0);
    private static final int All = m2170constructorimpl(1);
    private static final int Weight = m2170constructorimpl(2);
    private static final int Style = m2170constructorimpl(3);

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ FontSynthesis m2169boximpl(int i) {
        return new FontSynthesis(i);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static int m2170constructorimpl(int i) {
        return i;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m2171equalsimpl(int i, Object obj) {
        return (obj instanceof FontSynthesis) && i == ((FontSynthesis) obj).m2175unboximpl();
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m2172equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m2173hashCodeimpl(int i) {
        return i;
    }

    public boolean equals(Object obj) {
        return m2171equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m2173hashCodeimpl(this.value);
    }

    /* renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m2175unboximpl() {
        return this.value;
    }

    private /* synthetic */ FontSynthesis(int i) {
        this.value = i;
    }

    public String toString() {
        return m2174toStringimpl(this.value);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m2174toStringimpl(int i) {
        return m2172equalsimpl0(i, None) ? "None" : m2172equalsimpl0(i, All) ? "All" : m2172equalsimpl0(i, Weight) ? "Weight" : m2172equalsimpl0(i, Style) ? "Style" : "Invalid";
    }

    /* compiled from: FontSynthesis.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getNone-GVVA2EU, reason: not valid java name */
        public final int m2177getNoneGVVA2EU() {
            return FontSynthesis.None;
        }

        /* renamed from: getAll-GVVA2EU, reason: not valid java name */
        public final int m2176getAllGVVA2EU() {
            return FontSynthesis.All;
        }

        /* renamed from: getWeight-GVVA2EU, reason: not valid java name */
        public final int m2179getWeightGVVA2EU() {
            return FontSynthesis.Weight;
        }

        /* renamed from: getStyle-GVVA2EU, reason: not valid java name */
        public final int m2178getStyleGVVA2EU() {
            return FontSynthesis.Style;
        }
    }
}
