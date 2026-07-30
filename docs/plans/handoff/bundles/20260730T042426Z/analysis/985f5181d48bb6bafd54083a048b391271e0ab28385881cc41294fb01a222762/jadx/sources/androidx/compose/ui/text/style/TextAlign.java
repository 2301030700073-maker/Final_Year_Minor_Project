package androidx.compose.ui.text.style;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: TextAlign.kt */
/* loaded from: classes.dex */
public final class TextAlign {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int Left = m2342constructorimpl(1);
    private static final int Right = m2342constructorimpl(2);
    private static final int Center = m2342constructorimpl(3);
    private static final int Justify = m2342constructorimpl(4);
    private static final int Start = m2342constructorimpl(5);
    private static final int End = m2342constructorimpl(6);
    private static final int Unspecified = m2342constructorimpl(Integer.MIN_VALUE);

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ TextAlign m2341boximpl(int i) {
        return new TextAlign(i);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static int m2342constructorimpl(int i) {
        return i;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m2343equalsimpl(int i, Object obj) {
        return (obj instanceof TextAlign) && i == ((TextAlign) obj).m2347unboximpl();
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m2344equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m2345hashCodeimpl(int i) {
        return i;
    }

    public boolean equals(Object obj) {
        return m2343equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m2345hashCodeimpl(this.value);
    }

    /* renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m2347unboximpl() {
        return this.value;
    }

    private /* synthetic */ TextAlign(int i) {
        this.value = i;
    }

    public String toString() {
        return m2346toStringimpl(this.value);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m2346toStringimpl(int i) {
        return m2344equalsimpl0(i, Left) ? "Left" : m2344equalsimpl0(i, Right) ? "Right" : m2344equalsimpl0(i, Center) ? "Center" : m2344equalsimpl0(i, Justify) ? "Justify" : m2344equalsimpl0(i, Start) ? "Start" : m2344equalsimpl0(i, End) ? "End" : m2344equalsimpl0(i, Unspecified) ? "Unspecified" : "Invalid";
    }

    /* compiled from: TextAlign.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getLeft-e0LSkKk, reason: not valid java name */
        public final int m2351getLefte0LSkKk() {
            return TextAlign.Left;
        }

        /* renamed from: getRight-e0LSkKk, reason: not valid java name */
        public final int m2352getRighte0LSkKk() {
            return TextAlign.Right;
        }

        /* renamed from: getCenter-e0LSkKk, reason: not valid java name */
        public final int m2348getCentere0LSkKk() {
            return TextAlign.Center;
        }

        /* renamed from: getJustify-e0LSkKk, reason: not valid java name */
        public final int m2350getJustifye0LSkKk() {
            return TextAlign.Justify;
        }

        /* renamed from: getStart-e0LSkKk, reason: not valid java name */
        public final int m2353getStarte0LSkKk() {
            return TextAlign.Start;
        }

        /* renamed from: getEnd-e0LSkKk, reason: not valid java name */
        public final int m2349getEnde0LSkKk() {
            return TextAlign.End;
        }

        /* renamed from: getUnspecified-e0LSkKk, reason: not valid java name */
        public final int m2354getUnspecifiede0LSkKk() {
            return TextAlign.Unspecified;
        }
    }
}
