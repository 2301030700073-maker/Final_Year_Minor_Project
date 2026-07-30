package androidx.compose.ui.input;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: InputModeManager.kt */
/* loaded from: classes.dex */
public final class InputMode {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int Touch = m1594constructorimpl(1);
    private static final int Keyboard = m1594constructorimpl(2);

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ InputMode m1593boximpl(int i) {
        return new InputMode(i);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static int m1594constructorimpl(int i) {
        return i;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m1595equalsimpl(int i, Object obj) {
        return (obj instanceof InputMode) && i == ((InputMode) obj).m1599unboximpl();
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1596equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m1597hashCodeimpl(int i) {
        return i;
    }

    public boolean equals(Object obj) {
        return m1595equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m1597hashCodeimpl(this.value);
    }

    /* renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m1599unboximpl() {
        return this.value;
    }

    private /* synthetic */ InputMode(int i) {
        this.value = i;
    }

    public String toString() {
        return m1598toStringimpl(this.value);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m1598toStringimpl(int i) {
        return m1596equalsimpl0(i, Touch) ? "Touch" : m1596equalsimpl0(i, Keyboard) ? "Keyboard" : "Error";
    }

    /* compiled from: InputModeManager.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getTouch-aOaMEAU, reason: not valid java name */
        public final int m1601getTouchaOaMEAU() {
            return InputMode.Touch;
        }

        /* renamed from: getKeyboard-aOaMEAU, reason: not valid java name */
        public final int m1600getKeyboardaOaMEAU() {
            return InputMode.Keyboard;
        }
    }
}
