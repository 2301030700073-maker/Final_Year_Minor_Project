package androidx.compose.ui.graphics;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: PathOperation.kt */
/* loaded from: classes.dex */
public abstract class PathOperation {
    public static final Companion Companion = new Companion(null);
    private static final int Difference = m1397constructorimpl(0);
    private static final int Intersect = m1397constructorimpl(1);
    private static final int Union = m1397constructorimpl(2);
    private static final int Xor = m1397constructorimpl(3);
    private static final int ReverseDifference = m1397constructorimpl(4);

    /* renamed from: constructor-impl, reason: not valid java name */
    public static int m1397constructorimpl(int i) {
        return i;
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1398equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* compiled from: PathOperation.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getDifference-b3I0S0c, reason: not valid java name */
        public final int m1399getDifferenceb3I0S0c() {
            return PathOperation.Difference;
        }

        /* renamed from: getIntersect-b3I0S0c, reason: not valid java name */
        public final int m1400getIntersectb3I0S0c() {
            return PathOperation.Intersect;
        }

        /* renamed from: getUnion-b3I0S0c, reason: not valid java name */
        public final int m1402getUnionb3I0S0c() {
            return PathOperation.Union;
        }

        /* renamed from: getReverseDifference-b3I0S0c, reason: not valid java name */
        public final int m1401getReverseDifferenceb3I0S0c() {
            return PathOperation.ReverseDifference;
        }
    }
}
