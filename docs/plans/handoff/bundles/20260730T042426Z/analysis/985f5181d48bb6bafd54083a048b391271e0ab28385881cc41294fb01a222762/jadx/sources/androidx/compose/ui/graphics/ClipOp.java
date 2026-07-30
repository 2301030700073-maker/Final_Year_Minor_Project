package androidx.compose.ui.graphics;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: ClipOp.kt */
/* loaded from: classes.dex */
public abstract class ClipOp {
    public static final Companion Companion = new Companion(null);
    private static final int Difference = m1294constructorimpl(0);
    private static final int Intersect = m1294constructorimpl(1);

    /* renamed from: constructor-impl, reason: not valid java name */
    public static int m1294constructorimpl(int i) {
        return i;
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1295equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* compiled from: ClipOp.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getDifference-rtfAjoo, reason: not valid java name */
        public final int m1296getDifferencertfAjoo() {
            return ClipOp.Difference;
        }

        /* renamed from: getIntersect-rtfAjoo, reason: not valid java name */
        public final int m1297getIntersectrtfAjoo() {
            return ClipOp.Intersect;
        }
    }
}
