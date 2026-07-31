package androidx.compose.ui.node;

import androidx.compose.ui.platform.ViewConfiguration;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LayoutNode$Companion$DummyViewConfiguration$1 implements ViewConfiguration {
    @Override // androidx.compose.ui.platform.ViewConfiguration
    public final long getDoubleTapTimeoutMillis() {
        return 300L;
    }

    @Override // androidx.compose.ui.platform.ViewConfiguration
    public final /* synthetic */ float getHandwritingGestureLineMargin() {
        return 16.0f;
    }

    @Override // androidx.compose.ui.platform.ViewConfiguration
    public final /* synthetic */ float getHandwritingSlop() {
        return 2.0f;
    }

    @Override // androidx.compose.ui.platform.ViewConfiguration
    public final long getLongPressTimeoutMillis() {
        return 400L;
    }

    @Override // androidx.compose.ui.platform.ViewConfiguration
    public final /* synthetic */ float getMaximumFlingVelocity() {
        return Float.MAX_VALUE;
    }

    @Override // androidx.compose.ui.platform.ViewConfiguration
    /* renamed from: getMinimumTouchTargetSize-MYxV2XQ, reason: not valid java name */
    public final long mo607getMinimumTouchTargetSizeMYxV2XQ() {
        return 0L;
    }

    @Override // androidx.compose.ui.platform.ViewConfiguration
    public final float getTouchSlop() {
        return 16.0f;
    }
}
