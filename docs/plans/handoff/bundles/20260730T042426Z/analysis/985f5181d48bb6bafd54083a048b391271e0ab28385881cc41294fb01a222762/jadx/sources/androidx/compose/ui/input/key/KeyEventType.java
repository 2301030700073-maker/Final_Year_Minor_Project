package androidx.compose.ui.input.key;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: KeyEvent.kt */
/* loaded from: classes.dex */
public abstract class KeyEventType {
    public static final Companion Companion = new Companion(null);
    private static final int Unknown = m1629constructorimpl(0);
    private static final int KeyUp = m1629constructorimpl(1);
    private static final int KeyDown = m1629constructorimpl(2);

    /* renamed from: constructor-impl, reason: not valid java name */
    public static int m1629constructorimpl(int i) {
        return i;
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1630equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* compiled from: KeyEvent.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getUnknown-CS__XNY, reason: not valid java name */
        public final int m1633getUnknownCS__XNY() {
            return KeyEventType.Unknown;
        }

        /* renamed from: getKeyUp-CS__XNY, reason: not valid java name */
        public final int m1632getKeyUpCS__XNY() {
            return KeyEventType.KeyUp;
        }

        /* renamed from: getKeyDown-CS__XNY, reason: not valid java name */
        public final int m1631getKeyDownCS__XNY() {
            return KeyEventType.KeyDown;
        }
    }
}
