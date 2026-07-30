package androidx.compose.ui.input.pointer;

/* compiled from: PointerEvent.android.kt */
/* loaded from: classes.dex */
public abstract class PointerEvent_androidKt {
    /* renamed from: isPrimaryPressed-aHzCx-E, reason: not valid java name */
    public static final boolean m1676isPrimaryPressedaHzCxE(int i) {
        return (i & 33) != 0;
    }

    /* renamed from: isSecondaryPressed-aHzCx-E, reason: not valid java name */
    public static final boolean m1677isSecondaryPressedaHzCxE(int i) {
        return (i & 66) != 0;
    }

    public static final int EmptyPointerKeyboardModifiers() {
        return PointerKeyboardModifiers.m1703constructorimpl(0);
    }
}
