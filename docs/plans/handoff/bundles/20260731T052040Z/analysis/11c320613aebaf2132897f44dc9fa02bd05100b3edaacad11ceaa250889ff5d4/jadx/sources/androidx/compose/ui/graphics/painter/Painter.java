package androidx.compose.ui.graphics.painter;

import androidx.appcompat.widget.PopupMenu$1;
import androidx.compose.ui.graphics.AndroidPaint;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class Painter {
    public BlendModeColorFilter colorFilter;
    public AndroidPaint layerPaint;
    public float alpha = 1.0f;
    public LayoutDirection layoutDirection = LayoutDirection.Ltr;

    public abstract void applyAlpha(float f);

    public abstract void applyColorFilter(BlendModeColorFilter blendModeColorFilter);

    /* renamed from: draw-x_KDEd0, reason: not valid java name */
    public final void m283drawx_KDEd0(LayoutNodeDrawScope layoutNodeDrawScope, long j, float f, BlendModeColorFilter blendModeColorFilter) {
        CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.canvasDrawScope;
        if (this.alpha != f) {
            applyAlpha(f);
            this.alpha = f;
        }
        if (!Intrinsics.areEqual(this.colorFilter, blendModeColorFilter)) {
            applyColorFilter(blendModeColorFilter);
            this.colorFilter = blendModeColorFilter;
        }
        LayoutDirection layoutDirection = layoutNodeDrawScope.getLayoutDirection();
        if (this.layoutDirection != layoutDirection) {
            this.layoutDirection = layoutDirection;
        }
        int i = (int) (j >> 32);
        float intBitsToFloat = Float.intBitsToFloat((int) (layoutNodeDrawScope.mo266getSizeNHjbRc() >> 32)) - Float.intBitsToFloat(i);
        int i2 = (int) (j & 4294967295L);
        float intBitsToFloat2 = Float.intBitsToFloat((int) (layoutNodeDrawScope.mo266getSizeNHjbRc() & 4294967295L)) - Float.intBitsToFloat(i2);
        ((PopupMenu$1) canvasDrawScope.drawContext.context).inset(0.0f, 0.0f, intBitsToFloat, intBitsToFloat2);
        if (f > 0.0f) {
            try {
                if (Float.intBitsToFloat(i) > 0.0f && Float.intBitsToFloat(i2) > 0.0f) {
                    onDraw(layoutNodeDrawScope);
                }
            } finally {
                ((PopupMenu$1) canvasDrawScope.drawContext.context).inset(-0.0f, -0.0f, -intBitsToFloat, -intBitsToFloat2);
            }
        }
    }

    /* renamed from: getIntrinsicSize-NH-jbRc */
    public abstract long mo282getIntrinsicSizeNHjbRc();

    public abstract void onDraw(DrawScope drawScope);
}
