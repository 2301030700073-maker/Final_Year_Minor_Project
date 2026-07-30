package androidx.compose.ui.input.pointer;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: PointerEvent.kt */
/* loaded from: classes.dex */
public abstract class PointerType {
    public static final Companion Companion = new Companion(null);
    private static final int Unknown = m1708constructorimpl(0);
    private static final int Touch = m1708constructorimpl(1);
    private static final int Mouse = m1708constructorimpl(2);
    private static final int Stylus = m1708constructorimpl(3);
    private static final int Eraser = m1708constructorimpl(4);

    /* renamed from: constructor-impl, reason: not valid java name */
    private static int m1708constructorimpl(int i) {
        return i;
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1709equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m1710hashCodeimpl(int i) {
        return i;
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m1711toStringimpl(int i) {
        if (i == 1) {
            return "Touch";
        }
        if (i == 2) {
            return "Mouse";
        }
        if (i == 3) {
            return "Stylus";
        }
        if (i == 4) {
            return "Eraser";
        }
        return "Unknown";
    }

    /* compiled from: PointerEvent.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getUnknown-T8wyACA, reason: not valid java name */
        public final int m1716getUnknownT8wyACA() {
            return PointerType.Unknown;
        }

        /* renamed from: getTouch-T8wyACA, reason: not valid java name */
        public final int m1715getTouchT8wyACA() {
            return PointerType.Touch;
        }

        /* renamed from: getMouse-T8wyACA, reason: not valid java name */
        public final int m1713getMouseT8wyACA() {
            return PointerType.Mouse;
        }

        /* renamed from: getStylus-T8wyACA, reason: not valid java name */
        public final int m1714getStylusT8wyACA() {
            return PointerType.Stylus;
        }

        /* renamed from: getEraser-T8wyACA, reason: not valid java name */
        public final int m1712getEraserT8wyACA() {
            return PointerType.Eraser;
        }
    }
}
