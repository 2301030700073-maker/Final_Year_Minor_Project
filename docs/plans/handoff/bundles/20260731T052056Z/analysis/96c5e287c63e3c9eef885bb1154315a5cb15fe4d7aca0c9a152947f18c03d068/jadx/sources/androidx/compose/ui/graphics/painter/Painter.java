package androidx.compose.ui.graphics.painter;

import androidx.appcompat.widget.PopupMenu$1;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.AndroidPaint;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.recyclerview.widget.RecyclerView;
import coil3.util.UtilsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class Painter {
    public BlendModeColorFilter colorFilter;
    public AndroidPaint layerPaint;
    public boolean useLayer;
    public float alpha = 1.0f;
    public LayoutDirection layoutDirection = LayoutDirection.Ltr;

    public boolean applyAlpha(float f) {
        return false;
    }

    public boolean applyColorFilter(BlendModeColorFilter blendModeColorFilter) {
        return false;
    }

    /* renamed from: draw-x_KDEd0, reason: not valid java name */
    public final void m494drawx_KDEd0(DrawScope drawScope, long j, float f, BlendModeColorFilter blendModeColorFilter) {
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
        if (!Intrinsics.areEqual(this.colorFilter, blendModeColorFilter)) {
            if (!applyColorFilter(blendModeColorFilter)) {
                AndroidPaint androidPaint2 = this.layerPaint;
                if (blendModeColorFilter == null) {
                    if (androidPaint2 != null) {
                        androidPaint2.setColorFilter(null);
                    }
                    this.useLayer = false;
                } else {
                    if (androidPaint2 == null) {
                        androidPaint2 = ColorKt.Paint();
                        this.layerPaint = androidPaint2;
                    }
                    androidPaint2.setColorFilter(blendModeColorFilter);
                    this.useLayer = true;
                }
            }
            this.colorFilter = blendModeColorFilter;
        }
        LayoutDirection layoutDirection = drawScope.getLayoutDirection();
        if (this.layoutDirection != layoutDirection) {
            applyLayoutDirection(layoutDirection);
            this.layoutDirection = layoutDirection;
        }
        int i = (int) (j >> 32);
        float intBitsToFloat = Float.intBitsToFloat((int) (drawScope.mo476getSizeNHjbRc() >> 32)) - Float.intBitsToFloat(i);
        int i2 = (int) (j & 4294967295L);
        float intBitsToFloat2 = Float.intBitsToFloat((int) (drawScope.mo476getSizeNHjbRc() & 4294967295L)) - Float.intBitsToFloat(i2);
        ((PopupMenu$1) drawScope.getDrawContext().rootElement).inset(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, intBitsToFloat, intBitsToFloat2);
        if (f > RecyclerView.DECELERATION_RATE) {
            try {
                if (Float.intBitsToFloat(i) > RecyclerView.DECELERATION_RATE && Float.intBitsToFloat(i2) > RecyclerView.DECELERATION_RATE) {
                    if (this.useLayer) {
                        float intBitsToFloat3 = Float.intBitsToFloat(i);
                        float intBitsToFloat4 = Float.intBitsToFloat(i2);
                        Rect m793Recttz77jQw = UtilsKt.m793Recttz77jQw(0L, (Float.floatToRawIntBits(intBitsToFloat4) & 4294967295L) | (Float.floatToRawIntBits(intBitsToFloat3) << 32));
                        Canvas canvas = drawScope.getDrawContext().getCanvas();
                        AndroidPaint androidPaint3 = this.layerPaint;
                        if (androidPaint3 == null) {
                            androidPaint3 = ColorKt.Paint();
                            this.layerPaint = androidPaint3;
                        }
                        try {
                            canvas.saveLayer(m793Recttz77jQw, androidPaint3);
                            onDraw(drawScope);
                            canvas.restore();
                        } catch (Throwable th) {
                            canvas.restore();
                            throw th;
                        }
                    } else {
                        onDraw(drawScope);
                    }
                }
            } catch (Throwable th2) {
                ((PopupMenu$1) drawScope.getDrawContext().rootElement).inset(-0.0f, -0.0f, -intBitsToFloat, -intBitsToFloat2);
                throw th2;
            }
        }
        ((PopupMenu$1) drawScope.getDrawContext().rootElement).inset(-0.0f, -0.0f, -intBitsToFloat, -intBitsToFloat2);
    }

    /* renamed from: getIntrinsicSize-NH-jbRc */
    public abstract long mo493getIntrinsicSizeNHjbRc();

    public abstract void onDraw(DrawScope drawScope);

    public void applyLayoutDirection(LayoutDirection layoutDirection) {
    }
}
