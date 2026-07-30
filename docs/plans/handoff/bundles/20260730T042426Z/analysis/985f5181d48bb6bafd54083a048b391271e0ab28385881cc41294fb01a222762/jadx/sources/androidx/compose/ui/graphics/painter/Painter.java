package androidx.compose.ui.graphics.painter;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.AndroidPaint_androidKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.Paint;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Painter.kt */
/* loaded from: classes.dex */
public abstract class Painter {
    private ColorFilter colorFilter;
    private Paint layerPaint;
    private boolean useLayer;
    private float alpha = 1.0f;
    private LayoutDirection layoutDirection = LayoutDirection.Ltr;
    private final Function1 drawLambda = new Function1() { // from class: androidx.compose.ui.graphics.painter.Painter$drawLambda$1
        {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((DrawScope) obj);
            return Unit.INSTANCE;
        }

        public final void invoke(DrawScope drawScope) {
            Painter.this.onDraw(drawScope);
        }
    };

    protected boolean applyAlpha(float f) {
        return false;
    }

    protected boolean applyColorFilter(ColorFilter colorFilter) {
        return false;
    }

    protected boolean applyLayoutDirection(LayoutDirection layoutDirection) {
        return false;
    }

    /* renamed from: getIntrinsicSize-NH-jbRc */
    public abstract long mo1556getIntrinsicSizeNHjbRc();

    protected abstract void onDraw(DrawScope drawScope);

    private final Paint obtainPaint() {
        Paint paint = this.layerPaint;
        if (paint != null) {
            return paint;
        }
        Paint Paint = AndroidPaint_androidKt.Paint();
        this.layerPaint = Paint;
        return Paint;
    }

    private final void configureColorFilter(ColorFilter colorFilter) {
        if (Intrinsics.areEqual(this.colorFilter, colorFilter)) {
            return;
        }
        if (!applyColorFilter(colorFilter)) {
            if (colorFilter == null) {
                Paint paint = this.layerPaint;
                if (paint != null) {
                    paint.setColorFilter(null);
                }
                this.useLayer = false;
            } else {
                obtainPaint().setColorFilter(colorFilter);
                this.useLayer = true;
            }
        }
        this.colorFilter = colorFilter;
    }

    private final void configureAlpha(float f) {
        if (this.alpha == f) {
            return;
        }
        if (!applyAlpha(f)) {
            if (f == 1.0f) {
                Paint paint = this.layerPaint;
                if (paint != null) {
                    paint.setAlpha(f);
                }
                this.useLayer = false;
            } else {
                obtainPaint().setAlpha(f);
                this.useLayer = true;
            }
        }
        this.alpha = f;
    }

    private final void configureLayoutDirection(LayoutDirection layoutDirection) {
        if (this.layoutDirection != layoutDirection) {
            applyLayoutDirection(layoutDirection);
            this.layoutDirection = layoutDirection;
        }
    }

    /* renamed from: draw-x_KDEd0, reason: not valid java name */
    public final void m1557drawx_KDEd0(DrawScope drawScope, long j, float f, ColorFilter colorFilter) {
        configureAlpha(f);
        configureColorFilter(colorFilter);
        configureLayoutDirection(drawScope.getLayoutDirection());
        float m1204getWidthimpl = Size.m1204getWidthimpl(drawScope.mo1491getSizeNHjbRc()) - Size.m1204getWidthimpl(j);
        float m1202getHeightimpl = Size.m1202getHeightimpl(drawScope.mo1491getSizeNHjbRc()) - Size.m1202getHeightimpl(j);
        drawScope.getDrawContext().getTransform().inset(0.0f, 0.0f, m1204getWidthimpl, m1202getHeightimpl);
        if (f > 0.0f) {
            try {
                if (Size.m1204getWidthimpl(j) > 0.0f && Size.m1202getHeightimpl(j) > 0.0f) {
                    if (this.useLayer) {
                        Rect m1191Recttz77jQw = RectKt.m1191Recttz77jQw(Offset.Companion.m1179getZeroF1C5BW0(), SizeKt.Size(Size.m1204getWidthimpl(j), Size.m1202getHeightimpl(j)));
                        Canvas canvas = drawScope.getDrawContext().getCanvas();
                        try {
                            canvas.saveLayer(m1191Recttz77jQw, obtainPaint());
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
                drawScope.getDrawContext().getTransform().inset(-0.0f, -0.0f, -m1204getWidthimpl, -m1202getHeightimpl);
                throw th2;
            }
        }
        drawScope.getDrawContext().getTransform().inset(-0.0f, -0.0f, -m1204getWidthimpl, -m1202getHeightimpl);
    }
}
