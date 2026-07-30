package androidx.compose.ui.input.pointer;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: PointerEvent.kt */
/* loaded from: classes.dex */
public abstract class PointerEventType {
    public static final Companion Companion = new Companion(null);
    private static final int Unknown = m1667constructorimpl(0);
    private static final int Press = m1667constructorimpl(1);
    private static final int Release = m1667constructorimpl(2);
    private static final int Move = m1667constructorimpl(3);
    private static final int Enter = m1667constructorimpl(4);
    private static final int Exit = m1667constructorimpl(5);
    private static final int Scroll = m1667constructorimpl(6);

    /* renamed from: constructor-impl, reason: not valid java name */
    private static int m1667constructorimpl(int i) {
        return i;
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1668equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* compiled from: PointerEvent.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getUnknown-7fucELk, reason: not valid java name */
        public final int m1675getUnknown7fucELk() {
            return PointerEventType.Unknown;
        }

        /* renamed from: getPress-7fucELk, reason: not valid java name */
        public final int m1672getPress7fucELk() {
            return PointerEventType.Press;
        }

        /* renamed from: getRelease-7fucELk, reason: not valid java name */
        public final int m1673getRelease7fucELk() {
            return PointerEventType.Release;
        }

        /* renamed from: getMove-7fucELk, reason: not valid java name */
        public final int m1671getMove7fucELk() {
            return PointerEventType.Move;
        }

        /* renamed from: getEnter-7fucELk, reason: not valid java name */
        public final int m1669getEnter7fucELk() {
            return PointerEventType.Enter;
        }

        /* renamed from: getExit-7fucELk, reason: not valid java name */
        public final int m1670getExit7fucELk() {
            return PointerEventType.Exit;
        }

        /* renamed from: getScroll-7fucELk, reason: not valid java name */
        public final int m1674getScroll7fucELk() {
            return PointerEventType.Scroll;
        }
    }
}
