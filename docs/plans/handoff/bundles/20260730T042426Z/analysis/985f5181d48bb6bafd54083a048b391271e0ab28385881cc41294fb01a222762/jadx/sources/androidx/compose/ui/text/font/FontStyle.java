package androidx.compose.ui.text.font;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: FontStyle.kt */
/* loaded from: classes.dex */
public final class FontStyle {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int Normal = m2161constructorimpl(0);
    private static final int Italic = m2161constructorimpl(1);

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ FontStyle m2160boximpl(int i) {
        return new FontStyle(i);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static int m2161constructorimpl(int i) {
        return i;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m2162equalsimpl(int i, Object obj) {
        return (obj instanceof FontStyle) && i == ((FontStyle) obj).m2166unboximpl();
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m2163equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m2164hashCodeimpl(int i) {
        return i;
    }

    public boolean equals(Object obj) {
        return m2162equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m2164hashCodeimpl(this.value);
    }

    /* renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m2166unboximpl() {
        return this.value;
    }

    private /* synthetic */ FontStyle(int i) {
        this.value = i;
    }

    public String toString() {
        return m2165toStringimpl(this.value);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m2165toStringimpl(int i) {
        return m2163equalsimpl0(i, Normal) ? "Normal" : m2163equalsimpl0(i, Italic) ? "Italic" : "Invalid";
    }

    /* compiled from: FontStyle.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getNormal-_-LCdwA, reason: not valid java name */
        public final int m2168getNormal_LCdwA() {
            return FontStyle.Normal;
        }

        /* renamed from: getItalic-_-LCdwA, reason: not valid java name */
        public final int m2167getItalic_LCdwA() {
            return FontStyle.Italic;
        }
    }
}
