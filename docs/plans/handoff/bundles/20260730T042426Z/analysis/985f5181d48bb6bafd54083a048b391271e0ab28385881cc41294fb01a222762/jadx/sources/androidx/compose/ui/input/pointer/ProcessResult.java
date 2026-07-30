package androidx.compose.ui.input.pointer;

/* compiled from: PointerInputEventProcessor.kt */
/* loaded from: classes.dex */
public abstract class ProcessResult {
    /* renamed from: constructor-impl, reason: not valid java name */
    public static int m1720constructorimpl(int i) {
        return i;
    }

    /* renamed from: getAnyMovementConsumed-impl, reason: not valid java name */
    public static final boolean m1721getAnyMovementConsumedimpl(int i) {
        return (i & 2) != 0;
    }

    /* renamed from: getDispatchedToAPointerInputModifier-impl, reason: not valid java name */
    public static final boolean m1722getDispatchedToAPointerInputModifierimpl(int i) {
        return (i & 1) != 0;
    }
}
