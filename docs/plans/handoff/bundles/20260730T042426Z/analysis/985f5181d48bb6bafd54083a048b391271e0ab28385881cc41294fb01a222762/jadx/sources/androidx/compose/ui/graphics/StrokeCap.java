package androidx.compose.ui.graphics;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: StrokeCap.kt */
/* loaded from: classes.dex */
public abstract class StrokeCap {
    public static final Companion Companion = new Companion(null);
    private static final int Butt = m1419constructorimpl(0);
    private static final int Round = m1419constructorimpl(1);
    private static final int Square = m1419constructorimpl(2);

    /* renamed from: constructor-impl, reason: not valid java name */
    public static int m1419constructorimpl(int i) {
        return i;
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1420equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m1421hashCodeimpl(int i) {
        return i;
    }

    /* compiled from: StrokeCap.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getButt-KaPHkGw, reason: not valid java name */
        public final int m1423getButtKaPHkGw() {
            return StrokeCap.Butt;
        }

        /* renamed from: getRound-KaPHkGw, reason: not valid java name */
        public final int m1424getRoundKaPHkGw() {
            return StrokeCap.Round;
        }

        /* renamed from: getSquare-KaPHkGw, reason: not valid java name */
        public final int m1425getSquareKaPHkGw() {
            return StrokeCap.Square;
        }
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m1422toStringimpl(int i) {
        return m1420equalsimpl0(i, Butt) ? "Butt" : m1420equalsimpl0(i, Round) ? "Round" : m1420equalsimpl0(i, Square) ? "Square" : "Unknown";
    }
}
