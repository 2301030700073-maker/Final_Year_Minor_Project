package androidx.compose.ui.graphics.painter;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import kotlin.ULong;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ColorPainter extends Painter {
    public float alpha = 1.0f;
    public final long color;
    public BlendModeColorFilter colorFilter;

    public ColorPainter(long j) {
        this.color = j;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final boolean applyAlpha(float f) {
        this.alpha = f;
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final boolean applyColorFilter(BlendModeColorFilter blendModeColorFilter) {
        this.colorFilter = blendModeColorFilter;
        return true;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ColorPainter)) {
            return false;
        }
        long j = ((ColorPainter) obj).color;
        int i = Color.$r8$clinit;
        return ULong.m820equalsimpl0(this.color, j);
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    /* renamed from: getIntrinsicSize-NH-jbRc */
    public final long mo493getIntrinsicSizeNHjbRc() {
        return 9205357640488583168L;
    }

    public final int hashCode() {
        int i = Color.$r8$clinit;
        return Modifier.CC.m(this.color);
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final void onDraw(DrawScope drawScope) {
        Modifier.CC.m350drawRectnJ9OG0$default(drawScope, this.color, 0L, this.alpha, this.colorFilter, 86);
    }

    public final String toString() {
        return "ColorPainter(color=" + ((Object) Color.m434toStringimpl(this.color)) + ')';
    }
}
