package defpackage;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.os.Build;
import defpackage.C0492Se;
import defpackage.C3612rD;

/* loaded from: classes3.dex */
public final class C5 extends Drawable {

    /* renamed from: do, reason: not valid java name */
    public float f315do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public int f316do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ColorStateList f318do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Paint f319do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C3554qD f323do;

    /* renamed from: for, reason: not valid java name */
    public int f326for;

    /* renamed from: if, reason: not valid java name */
    public int f327if;

    /* renamed from: new, reason: not valid java name */
    public int f329new;

    /* renamed from: try, reason: not valid java name */
    public int f330try;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3612rD f324do = C3612rD.Cdo.f15244do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Path f320do = new Path();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Rect f321do = new Rect();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final RectF f322do = new RectF();

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final RectF f328if = new RectF();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f317do = new Cdo();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f325do = true;

    /* renamed from: C5$do, reason: invalid class name */
    public class Cdo extends Drawable.ConstantState {
        public Cdo() {
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            return C5.this;
        }
    }

    public C5(C3554qD c3554qD) {
        this.f323do = c3554qD;
        Paint paint = new Paint(1);
        this.f319do = paint;
        paint.setStyle(Paint.Style.STROKE);
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        boolean z = this.f325do;
        Paint paint = this.f319do;
        Rect rect = this.f321do;
        if (z) {
            copyBounds(rect);
            float height = this.f315do / rect.height();
            paint.setShader(new LinearGradient(0.0f, rect.top, 0.0f, rect.bottom, new int[]{G8.m711new(this.f316do, this.f330try), G8.m711new(this.f327if, this.f330try), G8.m711new(G8.m707case(this.f327if, 0), this.f330try), G8.m711new(G8.m707case(this.f329new, 0), this.f330try), G8.m711new(this.f329new, this.f330try), G8.m711new(this.f326for, this.f330try)}, new float[]{0.0f, height, 0.5f, 0.5f, 1.0f - height, 1.0f}, Shader.TileMode.CLAMP));
            this.f325do = false;
        }
        float strokeWidth = paint.getStrokeWidth() / 2.0f;
        copyBounds(rect);
        RectF rectF = this.f322do;
        rectF.set(rect);
        InterfaceC2817gb interfaceC2817gb = this.f323do.f15058do;
        RectF rectF2 = this.f328if;
        rectF2.set(getBounds());
        float min = Math.min(interfaceC2817gb.mo1748do(rectF2), rectF.width() / 2.0f);
        C3554qD c3554qD = this.f323do;
        rectF2.set(getBounds());
        if (c3554qD.m7863case(rectF2)) {
            rectF.inset(strokeWidth, strokeWidth);
            canvas.drawRoundRect(rectF, min, min, paint);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        return this.f317do;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return this.f315do > 0.0f ? -3 : -2;
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(21)
    public final void getOutline(Outline outline) {
        C3554qD c3554qD = this.f323do;
        RectF rectF = this.f328if;
        rectF.set(getBounds());
        if (c3554qD.m7863case(rectF)) {
            InterfaceC2817gb interfaceC2817gb = this.f323do.f15058do;
            rectF.set(getBounds());
            outline.setRoundRect(getBounds(), interfaceC2817gb.mo1748do(rectF));
            return;
        }
        Rect rect = this.f321do;
        copyBounds(rect);
        RectF rectF2 = this.f322do;
        rectF2.set(rect);
        C3554qD c3554qD2 = this.f323do;
        Path path = this.f320do;
        this.f324do.m7942do(c3554qD2, 1.0f, rectF2, null, path);
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            C0492Se.Cif.m2179do(outline, path);
            return;
        }
        if (i >= 29) {
            try {
                C0492Se.Cdo.m2178do(outline, path);
            } catch (IllegalArgumentException unused) {
            }
        } else if (path.isConvex()) {
            C0492Se.Cdo.m2178do(outline, path);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean getPadding(Rect rect) {
        C3554qD c3554qD = this.f323do;
        RectF rectF = this.f328if;
        rectF.set(getBounds());
        if (!c3554qD.m7863case(rectF)) {
            return true;
        }
        int round = Math.round(this.f315do);
        rect.set(round, round, round, round);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        ColorStateList colorStateList = this.f318do;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        this.f325do = true;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        int colorForState;
        ColorStateList colorStateList = this.f318do;
        if (colorStateList != null && (colorForState = colorStateList.getColorForState(iArr, this.f330try)) != this.f330try) {
            this.f325do = true;
            this.f330try = colorForState;
        }
        if (this.f325do) {
            invalidateSelf();
        }
        return this.f325do;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.f319do.setAlpha(i);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f319do.setColorFilter(colorFilter);
        invalidateSelf();
    }
}
