package androidx.compose.ui.focus;

import androidx.compose.ui.focus.FocusDirection;

/* compiled from: FocusOwnerImpl.kt */
/* loaded from: classes.dex */
public abstract class FocusOwnerImplKt {
    /* renamed from: is1dFocusSearch-3ESFkO8, reason: not valid java name */
    public static final boolean m1124is1dFocusSearch3ESFkO8(int i) {
        FocusDirection.Companion companion = FocusDirection.Companion;
        if (FocusDirection.m1099equalsimpl0(i, companion.m1107getNextdhqQ8s())) {
            return true;
        }
        return FocusDirection.m1099equalsimpl0(i, companion.m1108getPreviousdhqQ8s());
    }
}
