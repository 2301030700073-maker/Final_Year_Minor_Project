package androidx.compose.ui.text.style;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: TextOverflow.kt */
/* loaded from: classes.dex */
public abstract class TextOverflow {
    public static final Companion Companion = new Companion(null);
    private static final int Clip = m2379constructorimpl(1);
    private static final int Ellipsis = m2379constructorimpl(2);
    private static final int Visible = m2379constructorimpl(3);

    /* renamed from: constructor-impl, reason: not valid java name */
    public static int m2379constructorimpl(int i) {
        return i;
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m2380equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m2381hashCodeimpl(int i) {
        return i;
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m2382toStringimpl(int i) {
        return m2380equalsimpl0(i, Clip) ? "Clip" : m2380equalsimpl0(i, Ellipsis) ? "Ellipsis" : m2380equalsimpl0(i, Visible) ? "Visible" : "Invalid";
    }

    /* compiled from: TextOverflow.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getClip-gIe3tQ8, reason: not valid java name */
        public final int m2383getClipgIe3tQ8() {
            return TextOverflow.Clip;
        }

        /* renamed from: getEllipsis-gIe3tQ8, reason: not valid java name */
        public final int m2384getEllipsisgIe3tQ8() {
            return TextOverflow.Ellipsis;
        }

        /* renamed from: getVisible-gIe3tQ8, reason: not valid java name */
        public final int m2385getVisiblegIe3tQ8() {
            return TextOverflow.Visible;
        }
    }
}
