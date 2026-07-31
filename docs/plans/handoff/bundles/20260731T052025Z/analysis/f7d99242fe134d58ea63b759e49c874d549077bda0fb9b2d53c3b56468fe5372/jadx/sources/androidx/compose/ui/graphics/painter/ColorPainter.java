package androidx.compose.ui.graphics.painter;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import kotlin.ULong;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ColorPainter extends Painter {
    public final long color;
    public ColorFilter colorFilter;
    public float alpha = 1.0f;
    public final long intrinsicSize = 9205357640488583168L;

    public ColorPainter(long j) {
        this.color = j;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final boolean applyAlpha(float f) {
        this.alpha = f;
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final boolean applyColorFilter(ColorFilter colorFilter) {
        this.colorFilter = colorFilter;
        return true;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ColorPainter) {
            return Color.m482equalsimpl0(this.color, ((ColorPainter) obj).color);
        }
        return false;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    /* renamed from: getIntrinsicSize-NH-jbRc */
    public final long mo550getIntrinsicSizeNHjbRc() {
        return this.intrinsicSize;
    }

    public final int hashCode() {
        int i = Color.$r8$clinit;
        return ULong.m980hashCodeimpl(this.color);
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final void onDraw(LayoutNodeDrawScope layoutNodeDrawScope) {
        Modifier.CC.m402drawRectnJ9OG0$default(layoutNodeDrawScope, this.color, 0L, this.alpha, this.colorFilter, 86);
    }

    public final String toString() {
        return "ColorPainter(color=" + ((Object) Color.m488toStringimpl(this.color)) + ')';
    }
}
