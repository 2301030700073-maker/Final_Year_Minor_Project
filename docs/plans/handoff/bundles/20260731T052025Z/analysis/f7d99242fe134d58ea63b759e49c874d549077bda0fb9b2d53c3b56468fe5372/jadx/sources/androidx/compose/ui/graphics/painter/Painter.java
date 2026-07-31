package androidx.compose.ui.graphics.painter;

import androidx.camera.view.PreviewView;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.AndroidPaint;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.Intrinsics;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class Painter {
    public ColorFilter colorFilter;
    public AndroidPaint layerPaint;
    public boolean useLayer;
    public float alpha = 1.0f;
    public LayoutDirection layoutDirection = LayoutDirection.Ltr;

    public boolean applyAlpha(float f) {
        return false;
    }

    public boolean applyColorFilter(ColorFilter colorFilter) {
        return false;
    }

    /* renamed from: draw-x_KDEd0, reason: not valid java name */
    public final void m551drawx_KDEd0(LayoutNodeDrawScope layoutNodeDrawScope, long j, float f, ColorFilter colorFilter) {
        CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.canvasDrawScope;
        if (this.alpha != f) {
            if (!applyAlpha(f)) {
                AndroidPaint androidPaint = this.layerPaint;
                if (f == 1.0f) {
                    if (androidPaint != null) {
                        androidPaint.setAlpha(f);
                    }
                    this.useLayer = false;
                } else {
                    if (androidPaint == null) {
                        androidPaint = ColorKt.Paint();
                        this.layerPaint = androidPaint;
                    }
                    androidPaint.setAlpha(f);
                    this.useLayer = true;
                }
            }
            this.alpha = f;
        }
        if (!Intrinsics.areEqual(this.colorFilter, colorFilter)) {
            if (!applyColorFilter(colorFilter)) {
                AndroidPaint androidPaint2 = this.layerPaint;
                if (colorFilter == null) {
                    if (androidPaint2 != null) {
                        androidPaint2.setColorFilter(null);
                    }
                    this.useLayer = false;
                } else {
                    if (androidPaint2 == null) {
                        androidPaint2 = ColorKt.Paint();
                        this.layerPaint = androidPaint2;
                    }
                    androidPaint2.setColorFilter(colorFilter);
                    this.useLayer = true;
                }
            }
            this.colorFilter = colorFilter;
        }
        LayoutDirection layoutDirection = layoutNodeDrawScope.getLayoutDirection();
        if (this.layoutDirection != layoutDirection) {
            applyLayoutDirection(layoutDirection);
            this.layoutDirection = layoutDirection;
        }
        int i = (int) (j >> 32);
        float intBitsToFloat = Float.intBitsToFloat((int) (layoutNodeDrawScope.mo534getSizeNHjbRc() >> 32)) - Float.intBitsToFloat(i);
        int i2 = (int) (j & 4294967295L);
        float intBitsToFloat2 = Float.intBitsToFloat((int) (layoutNodeDrawScope.mo534getSizeNHjbRc() & 4294967295L)) - Float.intBitsToFloat(i2);
        ((PreviewView.AnonymousClass1) canvasDrawScope.drawContext.mOnInvalidateMenuCallback).inset(0.0f, 0.0f, intBitsToFloat, intBitsToFloat2);
        if (f > 0.0f) {
            try {
                if (Float.intBitsToFloat(i) > 0.0f && Float.intBitsToFloat(i2) > 0.0f) {
                    if (this.useLayer) {
                        float intBitsToFloat3 = Float.intBitsToFloat(i);
                        float intBitsToFloat4 = Float.intBitsToFloat(i2);
                        Rect m1090Recttz77jQw = Util.m1090Recttz77jQw(0L, (Float.floatToRawIntBits(intBitsToFloat4) & 4294967295L) | (Float.floatToRawIntBits(intBitsToFloat3) << 32));
                        Canvas canvas = canvasDrawScope.drawContext.getCanvas();
                        AndroidPaint androidPaint3 = this.layerPaint;
                        if (androidPaint3 == null) {
                            androidPaint3 = ColorKt.Paint();
                            this.layerPaint = androidPaint3;
                        }
                        try {
                            canvas.saveLayer(m1090Recttz77jQw, androidPaint3);
                            onDraw(layoutNodeDrawScope);
                            canvas.restore();
                        } catch (Throwable th) {
                            canvas.restore();
                            throw th;
                        }
                    } else {
                        onDraw(layoutNodeDrawScope);
                    }
                }
            } catch (Throwable th2) {
                ((PreviewView.AnonymousClass1) canvasDrawScope.drawContext.mOnInvalidateMenuCallback).inset(-0.0f, -0.0f, -intBitsToFloat, -intBitsToFloat2);
                throw th2;
            }
        }
        ((PreviewView.AnonymousClass1) canvasDrawScope.drawContext.mOnInvalidateMenuCallback).inset(-0.0f, -0.0f, -intBitsToFloat, -intBitsToFloat2);
    }

    /* renamed from: getIntrinsicSize-NH-jbRc */
    public abstract long mo550getIntrinsicSizeNHjbRc();

    public abstract void onDraw(LayoutNodeDrawScope layoutNodeDrawScope);

    public void applyLayoutDirection(LayoutDirection layoutDirection) {
    }
}
