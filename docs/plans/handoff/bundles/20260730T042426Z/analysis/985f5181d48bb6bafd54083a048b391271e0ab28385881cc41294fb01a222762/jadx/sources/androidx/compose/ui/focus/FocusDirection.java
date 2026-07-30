package androidx.compose.ui.focus;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: FocusDirection.kt */
/* loaded from: classes.dex */
public final class FocusDirection {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int Next = m1097constructorimpl(1);
    private static final int Previous = m1097constructorimpl(2);
    private static final int Left = m1097constructorimpl(3);
    private static final int Right = m1097constructorimpl(4);
    private static final int Up = m1097constructorimpl(5);
    private static final int Down = m1097constructorimpl(6);
    private static final int Enter = m1097constructorimpl(7);
    private static final int Exit = m1097constructorimpl(8);

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ FocusDirection m1096boximpl(int i) {
        return new FocusDirection(i);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static int m1097constructorimpl(int i) {
        return i;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m1098equalsimpl(int i, Object obj) {
        return (obj instanceof FocusDirection) && i == ((FocusDirection) obj).m1102unboximpl();
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1099equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m1100hashCodeimpl(int i) {
        return i;
    }

    public boolean equals(Object obj) {
        return m1098equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m1100hashCodeimpl(this.value);
    }

    /* renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m1102unboximpl() {
        return this.value;
    }

    private /* synthetic */ FocusDirection(int i) {
        this.value = i;
    }

    public String toString() {
        return m1101toStringimpl(this.value);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m1101toStringimpl(int i) {
        if (m1099equalsimpl0(i, Next)) {
            return "Next";
        }
        if (m1099equalsimpl0(i, Previous)) {
            return "Previous";
        }
        if (m1099equalsimpl0(i, Left)) {
            return "Left";
        }
        if (m1099equalsimpl0(i, Right)) {
            return "Right";
        }
        if (m1099equalsimpl0(i, Up)) {
            return "Up";
        }
        if (m1099equalsimpl0(i, Down)) {
            return "Down";
        }
        if (m1099equalsimpl0(i, Enter)) {
            return "Enter";
        }
        if (m1099equalsimpl0(i, Exit)) {
            return "Exit";
        }
        return "Invalid FocusDirection";
    }

    /* compiled from: FocusDirection.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getNext-dhqQ-8s, reason: not valid java name */
        public final int m1107getNextdhqQ8s() {
            return FocusDirection.Next;
        }

        /* renamed from: getPrevious-dhqQ-8s, reason: not valid java name */
        public final int m1108getPreviousdhqQ8s() {
            return FocusDirection.Previous;
        }

        /* renamed from: getLeft-dhqQ-8s, reason: not valid java name */
        public final int m1106getLeftdhqQ8s() {
            return FocusDirection.Left;
        }

        /* renamed from: getRight-dhqQ-8s, reason: not valid java name */
        public final int m1109getRightdhqQ8s() {
            return FocusDirection.Right;
        }

        /* renamed from: getUp-dhqQ-8s, reason: not valid java name */
        public final int m1110getUpdhqQ8s() {
            return FocusDirection.Up;
        }

        /* renamed from: getDown-dhqQ-8s, reason: not valid java name */
        public final int m1103getDowndhqQ8s() {
            return FocusDirection.Down;
        }

        /* renamed from: getEnter-dhqQ-8s, reason: not valid java name */
        public final int m1104getEnterdhqQ8s() {
            return FocusDirection.Enter;
        }

        /* renamed from: getExit-dhqQ-8s, reason: not valid java name */
        public final int m1105getExitdhqQ8s() {
            return FocusDirection.Exit;
        }
    }
}
