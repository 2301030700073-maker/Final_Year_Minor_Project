package androidx.compose.ui.graphics.painter;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.drawscope.DrawScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class BrushPainter extends Painter {
    public float alpha = 1.0f;
    public final SolidColor brush;
    public BlendModeColorFilter colorFilter;

    public BrushPainter(SolidColor solidColor) {
        this.brush = solidColor;
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
        if (obj instanceof BrushPainter) {
            return this.brush.equals(((BrushPainter) obj).brush);
        }
        return false;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    /* renamed from: getIntrinsicSize-NH-jbRc */
    public final long mo493getIntrinsicSizeNHjbRc() {
        return 9205357640488583168L;
    }

    public final int hashCode() {
        return this.brush.hashCode();
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final void onDraw(DrawScope drawScope) {
        Modifier.CC.m349drawRectAsUm42w$default(drawScope, this.brush, 0L, 0L, this.alpha, null, this.colorFilter, 86);
    }

    public final String toString() {
        return "BrushPainter(brush=" + this.brush + ')';
    }
}
