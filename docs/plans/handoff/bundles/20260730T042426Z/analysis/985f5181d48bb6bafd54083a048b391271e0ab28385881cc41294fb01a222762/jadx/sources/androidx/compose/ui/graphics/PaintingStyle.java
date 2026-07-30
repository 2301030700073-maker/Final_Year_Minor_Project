package androidx.compose.ui.graphics;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: PaintingStyle.kt */
/* loaded from: classes.dex */
public abstract class PaintingStyle {
    public static final Companion Companion = new Companion(null);
    private static final int Fill = m1387constructorimpl(0);
    private static final int Stroke = m1387constructorimpl(1);

    /* renamed from: constructor-impl, reason: not valid java name */
    public static int m1387constructorimpl(int i) {
        return i;
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1388equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* compiled from: PaintingStyle.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getFill-TiuSbCo, reason: not valid java name */
        public final int m1389getFillTiuSbCo() {
            return PaintingStyle.Fill;
        }

        /* renamed from: getStroke-TiuSbCo, reason: not valid java name */
        public final int m1390getStrokeTiuSbCo() {
            return PaintingStyle.Stroke;
        }
    }
}
