package androidx.compose.ui.graphics;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: StrokeJoin.kt */
/* loaded from: classes.dex */
public abstract class StrokeJoin {
    public static final Companion Companion = new Companion(null);
    private static final int Miter = m1426constructorimpl(0);
    private static final int Round = m1426constructorimpl(1);
    private static final int Bevel = m1426constructorimpl(2);

    /* renamed from: constructor-impl, reason: not valid java name */
    public static int m1426constructorimpl(int i) {
        return i;
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1427equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m1428hashCodeimpl(int i) {
        return i;
    }

    /* compiled from: StrokeJoin.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getMiter-LxFBmk8, reason: not valid java name */
        public final int m1431getMiterLxFBmk8() {
            return StrokeJoin.Miter;
        }

        /* renamed from: getRound-LxFBmk8, reason: not valid java name */
        public final int m1432getRoundLxFBmk8() {
            return StrokeJoin.Round;
        }

        /* renamed from: getBevel-LxFBmk8, reason: not valid java name */
        public final int m1430getBevelLxFBmk8() {
            return StrokeJoin.Bevel;
        }
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m1429toStringimpl(int i) {
        return m1427equalsimpl0(i, Miter) ? "Miter" : m1427equalsimpl0(i, Round) ? "Round" : m1427equalsimpl0(i, Bevel) ? "Bevel" : "Unknown";
    }
}
