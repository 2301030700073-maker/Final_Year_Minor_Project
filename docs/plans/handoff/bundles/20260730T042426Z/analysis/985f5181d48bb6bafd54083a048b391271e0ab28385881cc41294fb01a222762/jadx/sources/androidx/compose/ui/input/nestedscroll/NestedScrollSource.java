package androidx.compose.ui.input.nestedscroll;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: NestedScrollModifier.kt */
/* loaded from: classes.dex */
public abstract class NestedScrollSource {
    public static final Companion Companion = new Companion(null);
    private static final int Drag;
    private static final int Fling;
    private static final int Relocate;
    private static final int SideEffect;
    private static final int UserInput;
    private static final int Wheel;

    /* renamed from: constructor-impl, reason: not valid java name */
    public static int m1648constructorimpl(int i) {
        return i;
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1649equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* compiled from: NestedScrollModifier.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getUserInput-WNlRxjI, reason: not valid java name */
        public final int m1651getUserInputWNlRxjI() {
            return NestedScrollSource.UserInput;
        }

        /* renamed from: getSideEffect-WNlRxjI, reason: not valid java name */
        public final int m1650getSideEffectWNlRxjI() {
            return NestedScrollSource.SideEffect;
        }
    }

    static {
        int m1648constructorimpl = m1648constructorimpl(1);
        UserInput = m1648constructorimpl;
        int m1648constructorimpl2 = m1648constructorimpl(2);
        SideEffect = m1648constructorimpl2;
        Drag = m1648constructorimpl;
        Fling = m1648constructorimpl2;
        Relocate = m1648constructorimpl(3);
        Wheel = m1648constructorimpl;
    }
}
