package defpackage;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
public final class NA extends Drawable {

    /* renamed from: do, reason: not valid java name */
    public final float f2326do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ColorStateList f2327do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Paint f2328do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public PorterDuffColorFilter f2330do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Rect f2331do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final RectF f2332do;

    /* renamed from: if, reason: not valid java name */
    public float f2334if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public ColorStateList f2335if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f2333do = false;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f2336if = true;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public PorterDuff.Mode f2329do = PorterDuff.Mode.SRC_IN;

    public NA(float f, ColorStateList colorStateList) {
        this.f2326do = f;
        Paint paint = new Paint(5);
        this.f2328do = paint;
        colorStateList = colorStateList == null ? ColorStateList.valueOf(0) : colorStateList;
        this.f2327do = colorStateList;
        paint.setColor(colorStateList.getColorForState(getState(), this.f2327do.getDefaultColor()));
        this.f2332do = new RectF();
        this.f2331do = new Rect();
    }

    /* renamed from: do, reason: not valid java name */
    public final PorterDuffColorFilter m1507do(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        boolean z;
        Paint paint = this.f2328do;
        if (this.f2330do == null || paint.getColorFilter() != null) {
            z = false;
        } else {
            paint.setColorFilter(this.f2330do);
            z = true;
        }
        RectF rectF = this.f2332do;
        float f = this.f2326do;
        canvas.drawRoundRect(rectF, f, f, paint);
        if (z) {
            paint.setColorFilter(null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        outline.setRoundRect(this.f2331do, this.f2326do);
    }

    /* renamed from: if, reason: not valid java name */
    public final void m1508if(Rect rect) {
        if (rect == null) {
            rect = getBounds();
        }
        RectF rectF = this.f2332do;
        rectF.set(rect.left, rect.top, rect.right, rect.bottom);
        Rect rect2 = this.f2331do;
        rect2.set(rect);
        if (this.f2333do) {
            float f = this.f2334if;
            boolean z = this.f2336if;
            float f2 = this.f2326do;
            float m1638do = OA.m1638do(f, f2, z);
            float f3 = this.f2334if;
            if (this.f2336if) {
                f3 = (float) (((1.0d - OA.f2587do) * f2) + f3);
            }
            rect2.inset((int) Math.ceil(f3), (int) Math.ceil(m1638do));
            rectF.set(rect2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = this.f2335if;
        return (colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = this.f2327do) != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        m1508if(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        PorterDuff.Mode mode;
        ColorStateList colorStateList = this.f2327do;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        Paint paint = this.f2328do;
        boolean z = colorForState != paint.getColor();
        if (z) {
            paint.setColor(colorForState);
        }
        ColorStateList colorStateList2 = this.f2335if;
        if (colorStateList2 == null || (mode = this.f2329do) == null) {
            return z;
        }
        this.f2330do = m1507do(colorStateList2, mode);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.f2328do.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f2328do.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        this.f2335if = colorStateList;
        this.f2330do = m1507do(colorStateList, this.f2329do);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        this.f2329do = mode;
        this.f2330do = m1507do(this.f2335if, mode);
        invalidateSelf();
    }
}
