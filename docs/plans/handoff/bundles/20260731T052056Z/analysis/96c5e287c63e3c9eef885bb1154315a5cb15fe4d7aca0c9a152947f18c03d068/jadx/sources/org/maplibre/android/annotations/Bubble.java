package org.maplibre.android.annotations;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Bubble extends Drawable {
    public float arrowHeight;
    public float arrowPosition;
    public float arrowWidth;
    public float cornersRadius;
    public Paint paint;
    public Path path;
    public RectF rect;
    public Paint strokePaint;
    public Path strokePath;
    public float strokeWidth;

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        if (this.strokeWidth > RecyclerView.DECELERATION_RATE) {
            canvas.drawPath(this.strokePath, this.strokePaint);
        }
        canvas.drawPath(this.path, this.paint);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return (int) this.rect.height();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return (int) this.rect.width();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    public final void initBottomSquarePath(RectF rectF, Path path, float f) {
        path.moveTo(rectF.left + f, rectF.top + f);
        path.lineTo(rectF.right - f, rectF.top + f);
        float f2 = rectF.right - f;
        float f3 = rectF.bottom;
        float f4 = this.arrowHeight;
        path.lineTo(f2, (f3 - f4) - f);
        float f5 = rectF.left;
        float f6 = this.arrowWidth;
        float f7 = this.arrowPosition;
        float f8 = f / 2.0f;
        path.lineTo(((f5 + f6) + f7) - f8, (rectF.bottom - f4) - f);
        path.lineTo((f6 / 2.0f) + rectF.left + f7, (rectF.bottom - f) - f);
        path.lineTo(rectF.left + f7 + f8, (rectF.bottom - f4) - f);
        path.lineTo(rectF.left + f7 + f, (rectF.bottom - f4) - f);
        path.lineTo(rectF.left + f, (rectF.bottom - f4) - f);
        path.lineTo(rectF.left + f, rectF.top + f);
        path.close();
    }

    public final void initLeftSquarePath(RectF rectF, Path path, float f) {
        float f2 = this.arrowWidth;
        path.moveTo(rectF.left + f2 + f, rectF.top + f);
        path.lineTo(rectF.width() - f, rectF.top + f);
        path.lineTo(rectF.right - f, rectF.bottom - f);
        path.lineTo(rectF.left + f2 + f, rectF.bottom - f);
        float f3 = rectF.left + f2 + f;
        float f4 = this.arrowHeight;
        float f5 = this.arrowPosition;
        float f6 = f / 2.0f;
        path.lineTo(f3, (f4 + f5) - f6);
        path.lineTo(rectF.left + f + f, (f4 / 2.0f) + f5);
        path.lineTo(rectF.left + f2 + f, f5 + f6);
        path.lineTo(rectF.left + f2 + f, rectF.top + f);
        path.close();
    }

    public final void initPath(ArrowDirection arrowDirection, Path path, float f) {
        float f2 = this.arrowPosition;
        float f3 = this.arrowWidth;
        float f4 = this.arrowHeight;
        float f5 = this.cornersRadius;
        RectF rectF = this.rect;
        int i = arrowDirection.value;
        if (i == 0) {
            if (f5 <= RecyclerView.DECELERATION_RATE) {
                initLeftSquarePath(rectF, path, f);
                return;
            }
            if (f > RecyclerView.DECELERATION_RATE && f > f5) {
                initLeftSquarePath(rectF, path, f);
                return;
            }
            path.moveTo(rectF.left + f3 + f5 + f, rectF.top + f);
            path.lineTo((rectF.width() - f5) - f, rectF.top + f);
            float f6 = rectF.right;
            float f7 = rectF.top;
            path.arcTo(new RectF(f6 - f5, f7 + f, f6 - f, f7 + f5), 270.0f, 90.0f);
            path.lineTo(rectF.right - f, (rectF.bottom - f5) - f);
            float f8 = rectF.right;
            float f9 = rectF.bottom;
            path.arcTo(new RectF(f8 - f5, f9 - f5, f8 - f, f9 - f), RecyclerView.DECELERATION_RATE, 90.0f);
            path.lineTo(rectF.left + f3 + f5 + f, rectF.bottom - f);
            float f10 = rectF.left;
            float f11 = rectF.bottom;
            path.arcTo(new RectF(f10 + f3 + f, f11 - f5, f10 + f5 + f3, f11 - f), 90.0f, 90.0f);
            float f12 = f / 2.0f;
            path.lineTo(rectF.left + f3 + f, (f4 + f2) - f12);
            path.lineTo(rectF.left + f + f, (f4 / 2.0f) + f2);
            path.lineTo(rectF.left + f3 + f, f2 + f12);
            path.lineTo(rectF.left + f3 + f, rectF.top + f5 + f);
            float f13 = rectF.left;
            float f14 = rectF.top;
            path.arcTo(new RectF(f13 + f3 + f, f + f14, f13 + f5 + f3, f5 + f14), 180.0f, 90.0f);
            path.close();
            return;
        }
        if (i == 1) {
            if (f5 <= RecyclerView.DECELERATION_RATE) {
                initRightSquarePath(rectF, path, f);
                return;
            }
            if (f > RecyclerView.DECELERATION_RATE && f > f5) {
                initRightSquarePath(rectF, path, f);
                return;
            }
            path.moveTo(rectF.left + f5 + f, rectF.top + f);
            path.lineTo(((rectF.width() - f5) - f3) - f, rectF.top + f);
            float f15 = rectF.right;
            float f16 = rectF.top;
            path.arcTo(new RectF((f15 - f5) - f3, f16 + f, (f15 - f3) - f, f16 + f5), 270.0f, 90.0f);
            float f17 = f / 2.0f;
            path.lineTo((rectF.right - f3) - f, f2 + f17);
            path.lineTo((rectF.right - f) - f, (f4 / 2.0f) + f2);
            path.lineTo((rectF.right - f3) - f, (f2 + f4) - f17);
            path.lineTo((rectF.right - f3) - f, (rectF.bottom - f5) - f);
            float f18 = rectF.right;
            float f19 = rectF.bottom;
            path.arcTo(new RectF((f18 - f5) - f3, f19 - f5, (f18 - f3) - f, f19 - f), RecyclerView.DECELERATION_RATE, 90.0f);
            path.lineTo(rectF.left + f3 + f, rectF.bottom - f);
            float f20 = rectF.left;
            float f21 = rectF.bottom;
            path.arcTo(new RectF(f20 + f, f21 - f5, f20 + f5, f21 - f), 90.0f, 90.0f);
            float f22 = rectF.left;
            float f23 = rectF.top;
            path.arcTo(new RectF(f22 + f, f + f23, f22 + f5, f5 + f23), 180.0f, 90.0f);
            path.close();
            return;
        }
        if (i == 2) {
            if (f5 <= RecyclerView.DECELERATION_RATE) {
                initTopSquarePath(rectF, path, f);
                return;
            }
            if (f > RecyclerView.DECELERATION_RATE && f > f5) {
                initTopSquarePath(rectF, path, f);
                return;
            }
            path.moveTo(Math.min(f2, f5) + rectF.left + f, rectF.top + f4 + f);
            float f24 = f / 2.0f;
            path.lineTo(rectF.left + f2 + f24, rectF.top + f4 + f);
            path.lineTo((f3 / 2.0f) + rectF.left + f2, rectF.top + f + f);
            path.lineTo(((rectF.left + f3) + f2) - f24, rectF.top + f4 + f);
            path.lineTo((rectF.right - f5) - f, rectF.top + f4 + f);
            float f25 = rectF.right;
            float f26 = rectF.top;
            path.arcTo(new RectF(f25 - f5, f26 + f4 + f, f25 - f, f26 + f5 + f4), 270.0f, 90.0f);
            path.lineTo(rectF.right - f, (rectF.bottom - f5) - f);
            float f27 = rectF.right;
            float f28 = rectF.bottom;
            path.arcTo(new RectF(f27 - f5, f28 - f5, f27 - f, f28 - f), RecyclerView.DECELERATION_RATE, 90.0f);
            path.lineTo(rectF.left + f5 + f, rectF.bottom - f);
            float f29 = rectF.left;
            float f30 = rectF.bottom;
            path.arcTo(new RectF(f29 + f, f30 - f5, f29 + f5, f30 - f), 90.0f, 90.0f);
            path.lineTo(rectF.left + f, rectF.top + f4 + f5 + f);
            float f31 = rectF.left;
            float f32 = rectF.top;
            path.arcTo(new RectF(f31 + f, f32 + f4 + f, f31 + f5, f5 + f32 + f4), 180.0f, 90.0f);
            path.close();
            return;
        }
        if (i != 3) {
            return;
        }
        if (f5 <= RecyclerView.DECELERATION_RATE) {
            initBottomSquarePath(rectF, path, f);
            return;
        }
        if (f > RecyclerView.DECELERATION_RATE && f > f5) {
            initBottomSquarePath(rectF, path, f);
            return;
        }
        path.moveTo(rectF.left + f5 + f, rectF.top + f);
        path.lineTo((rectF.width() - f5) - f, rectF.top + f);
        float f33 = rectF.right;
        float f34 = rectF.top;
        path.arcTo(new RectF(f33 - f5, f34 + f, f33 - f, f34 + f5), 270.0f, 90.0f);
        path.lineTo(rectF.right - f, ((rectF.bottom - f4) - f5) - f);
        float f35 = rectF.right;
        float f36 = rectF.bottom;
        path.arcTo(new RectF(f35 - f5, (f36 - f5) - f4, f35 - f, (f36 - f4) - f), RecyclerView.DECELERATION_RATE, 90.0f);
        float f37 = f / 2.0f;
        path.lineTo(((rectF.left + f3) + f2) - f37, (rectF.bottom - f4) - f);
        path.lineTo((f3 / 2.0f) + rectF.left + f2, (rectF.bottom - f) - f);
        path.lineTo(rectF.left + f2 + f37, (rectF.bottom - f4) - f);
        path.lineTo(Math.min(f5, f2) + rectF.left + f, (rectF.bottom - f4) - f);
        float f38 = rectF.left;
        float f39 = rectF.bottom;
        path.arcTo(new RectF(f38 + f, (f39 - f5) - f4, f38 + f5, (f39 - f4) - f), 90.0f, 90.0f);
        path.lineTo(rectF.left + f, rectF.top + f5 + f);
        float f40 = rectF.left;
        float f41 = rectF.top;
        path.arcTo(new RectF(f40 + f, f + f41, f40 + f5, f5 + f41), 180.0f, 90.0f);
        path.close();
    }

    public final void initRightSquarePath(RectF rectF, Path path, float f) {
        path.moveTo(rectF.left + f, rectF.top + f);
        float width = rectF.width();
        float f2 = this.arrowWidth;
        path.lineTo((width - f2) - f, rectF.top + f);
        float f3 = (rectF.right - f2) - f;
        float f4 = this.arrowPosition;
        float f5 = f / 2.0f;
        path.lineTo(f3, f4 + f5);
        float f6 = (rectF.right - f) - f;
        float f7 = this.arrowHeight;
        path.lineTo(f6, (f7 / 2.0f) + f4);
        path.lineTo((rectF.right - f2) - f, (f4 + f7) - f5);
        path.lineTo((rectF.right - f2) - f, rectF.bottom - f);
        path.lineTo(rectF.left + f, rectF.bottom - f);
        path.lineTo(rectF.left + f, rectF.top + f);
        path.close();
    }

    public final void initTopSquarePath(RectF rectF, Path path, float f) {
        float f2 = rectF.left;
        float f3 = this.arrowPosition;
        float f4 = rectF.top;
        float f5 = this.arrowHeight;
        path.moveTo(f2 + f3 + f, f4 + f5 + f);
        float f6 = f / 2.0f;
        path.lineTo(rectF.left + f3 + f6, rectF.top + f5 + f);
        float f7 = rectF.left;
        float f8 = this.arrowWidth;
        path.lineTo((f8 / 2.0f) + f7 + f3, rectF.top + f + f);
        path.lineTo(((rectF.left + f8) + f3) - f6, rectF.top + f5 + f);
        path.lineTo(rectF.right - f, rectF.top + f5 + f);
        path.lineTo(rectF.right - f, rectF.bottom - f);
        path.lineTo(rectF.left + f, rectF.bottom - f);
        path.lineTo(rectF.left + f, rectF.top + f5 + f);
        path.lineTo(rectF.left + f3 + f, rectF.top + f5 + f);
        path.close();
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.paint.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.paint.setColorFilter(colorFilter);
    }
}
