package androidx.compose.ui.graphics;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: PathFillType.kt */
/* loaded from: classes.dex */
public abstract class PathFillType {
    public static final Companion Companion = new Companion(null);
    private static final int NonZero = m1392constructorimpl(0);
    private static final int EvenOdd = m1392constructorimpl(1);

    /* renamed from: constructor-impl, reason: not valid java name */
    public static int m1392constructorimpl(int i) {
        return i;
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1393equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m1394hashCodeimpl(int i) {
        return i;
    }

    /* compiled from: PathFillType.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getNonZero-Rg-k1Os, reason: not valid java name */
        public final int m1396getNonZeroRgk1Os() {
            return PathFillType.NonZero;
        }

        /* renamed from: getEvenOdd-Rg-k1Os, reason: not valid java name */
        public final int m1395getEvenOddRgk1Os() {
            return PathFillType.EvenOdd;
        }
    }
}
