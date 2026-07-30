package androidx.compose.ui.text.style;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: TextDirection.kt */
/* loaded from: classes.dex */
public final class TextDirection {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int Ltr = m2356constructorimpl(1);
    private static final int Rtl = m2356constructorimpl(2);
    private static final int Content = m2356constructorimpl(3);
    private static final int ContentOrLtr = m2356constructorimpl(4);
    private static final int ContentOrRtl = m2356constructorimpl(5);
    private static final int Unspecified = m2356constructorimpl(Integer.MIN_VALUE);

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ TextDirection m2355boximpl(int i) {
        return new TextDirection(i);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static int m2356constructorimpl(int i) {
        return i;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m2357equalsimpl(int i, Object obj) {
        return (obj instanceof TextDirection) && i == ((TextDirection) obj).m2361unboximpl();
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m2358equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m2359hashCodeimpl(int i) {
        return i;
    }

    public boolean equals(Object obj) {
        return m2357equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m2359hashCodeimpl(this.value);
    }

    /* renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m2361unboximpl() {
        return this.value;
    }

    private /* synthetic */ TextDirection(int i) {
        this.value = i;
    }

    public String toString() {
        return m2360toStringimpl(this.value);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m2360toStringimpl(int i) {
        return m2358equalsimpl0(i, Ltr) ? "Ltr" : m2358equalsimpl0(i, Rtl) ? "Rtl" : m2358equalsimpl0(i, Content) ? "Content" : m2358equalsimpl0(i, ContentOrLtr) ? "ContentOrLtr" : m2358equalsimpl0(i, ContentOrRtl) ? "ContentOrRtl" : m2358equalsimpl0(i, Unspecified) ? "Unspecified" : "Invalid";
    }

    /* compiled from: TextDirection.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getLtr-s_7X-co, reason: not valid java name */
        public final int m2365getLtrs_7Xco() {
            return TextDirection.Ltr;
        }

        /* renamed from: getRtl-s_7X-co, reason: not valid java name */
        public final int m2366getRtls_7Xco() {
            return TextDirection.Rtl;
        }

        /* renamed from: getContent-s_7X-co, reason: not valid java name */
        public final int m2362getContents_7Xco() {
            return TextDirection.Content;
        }

        /* renamed from: getContentOrLtr-s_7X-co, reason: not valid java name */
        public final int m2363getContentOrLtrs_7Xco() {
            return TextDirection.ContentOrLtr;
        }

        /* renamed from: getContentOrRtl-s_7X-co, reason: not valid java name */
        public final int m2364getContentOrRtls_7Xco() {
            return TextDirection.ContentOrRtl;
        }

        /* renamed from: getUnspecified-s_7X-co, reason: not valid java name */
        public final int m2367getUnspecifieds_7Xco() {
            return TextDirection.Unspecified;
        }
    }
}
