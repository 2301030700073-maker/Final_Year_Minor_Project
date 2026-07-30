package androidx.compose.foundation.layout;

import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import ch.qos.logback.core.CoreConstants;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: WindowInsets.kt */
/* loaded from: classes.dex */
final class LimitInsets implements WindowInsets {
    private final WindowInsets insets;
    private final int sides;

    public /* synthetic */ LimitInsets(WindowInsets windowInsets, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(windowInsets, i);
    }

    private LimitInsets(WindowInsets windowInsets, int i) {
        this.insets = windowInsets;
        this.sides = i;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int getLeft(Density density, LayoutDirection layoutDirection) {
        int m306getAllowLeftInRtlJoeWqyM$foundation_layout_release;
        if (layoutDirection == LayoutDirection.Ltr) {
            m306getAllowLeftInRtlJoeWqyM$foundation_layout_release = WindowInsetsSides.Companion.m305getAllowLeftInLtrJoeWqyM$foundation_layout_release();
        } else {
            m306getAllowLeftInRtlJoeWqyM$foundation_layout_release = WindowInsetsSides.Companion.m306getAllowLeftInRtlJoeWqyM$foundation_layout_release();
        }
        if (WindowInsetsSides.m300hasAnybkgdKaI$foundation_layout_release(this.sides, m306getAllowLeftInRtlJoeWqyM$foundation_layout_release)) {
            return this.insets.getLeft(density, layoutDirection);
        }
        return 0;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int getTop(Density density) {
        if (WindowInsetsSides.m300hasAnybkgdKaI$foundation_layout_release(this.sides, WindowInsetsSides.Companion.m311getTopJoeWqyM())) {
            return this.insets.getTop(density);
        }
        return 0;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int getRight(Density density, LayoutDirection layoutDirection) {
        int m308getAllowRightInRtlJoeWqyM$foundation_layout_release;
        if (layoutDirection == LayoutDirection.Ltr) {
            m308getAllowRightInRtlJoeWqyM$foundation_layout_release = WindowInsetsSides.Companion.m307getAllowRightInLtrJoeWqyM$foundation_layout_release();
        } else {
            m308getAllowRightInRtlJoeWqyM$foundation_layout_release = WindowInsetsSides.Companion.m308getAllowRightInRtlJoeWqyM$foundation_layout_release();
        }
        if (WindowInsetsSides.m300hasAnybkgdKaI$foundation_layout_release(this.sides, m308getAllowRightInRtlJoeWqyM$foundation_layout_release)) {
            return this.insets.getRight(density, layoutDirection);
        }
        return 0;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int getBottom(Density density) {
        if (WindowInsetsSides.m300hasAnybkgdKaI$foundation_layout_release(this.sides, WindowInsetsSides.Companion.m309getBottomJoeWqyM())) {
            return this.insets.getBottom(density);
        }
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LimitInsets)) {
            return false;
        }
        LimitInsets limitInsets = (LimitInsets) obj;
        return Intrinsics.areEqual(this.insets, limitInsets.insets) && WindowInsetsSides.m299equalsimpl0(this.sides, limitInsets.sides);
    }

    public int hashCode() {
        return (this.insets.hashCode() * 31) + WindowInsetsSides.m301hashCodeimpl(this.sides);
    }

    public String toString() {
        return CoreConstants.LEFT_PARENTHESIS_CHAR + this.insets + " only " + ((Object) WindowInsetsSides.m303toStringimpl(this.sides)) + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }
}
