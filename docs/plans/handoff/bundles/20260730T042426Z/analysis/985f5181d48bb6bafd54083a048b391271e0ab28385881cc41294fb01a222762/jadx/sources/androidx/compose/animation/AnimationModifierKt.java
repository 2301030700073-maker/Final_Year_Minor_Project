package androidx.compose.animation;

import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;

/* compiled from: AnimationModifier.kt */
/* loaded from: classes.dex */
public abstract class AnimationModifierKt {
    private static final long InvalidSize = IntSizeKt.IntSize(Integer.MIN_VALUE, Integer.MIN_VALUE);

    public static final long getInvalidSize() {
        return InvalidSize;
    }

    /* renamed from: isValid-ozmzZPI, reason: not valid java name */
    public static final boolean m24isValidozmzZPI(long j) {
        return !IntSize.m2482equalsimpl0(j, InvalidSize);
    }
}
