package defpackage;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;

/* renamed from: yh, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C4051yh extends Drawable {

    /* renamed from: do, reason: not valid java name */
    public float f16811do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Drawable f16812do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final float[] f16813do;

    /* renamed from: if, reason: not valid java name */
    public final Drawable f16814if;

    public C4051yh(Drawable drawable, Drawable drawable2) {
        this.f16812do = drawable.getConstantState().newDrawable().mutate();
        Drawable mutate = drawable2.getConstantState().newDrawable().mutate();
        this.f16814if = mutate;
        mutate.setAlpha(0);
        this.f16813do = new float[2];
    }

    /* renamed from: do, reason: not valid java name */
    public final void m8764do(float f) {
        if (this.f16811do != f) {
            this.f16811do = f;
            float[] fArr = this.f16813do;
            O2.m1586for(fArr, f);
            this.f16812do.setAlpha((int) (fArr[0] * 255.0f));
            this.f16814if.setAlpha((int) (fArr[1] * 255.0f));
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        this.f16812do.draw(canvas);
        this.f16814if.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return Math.max(this.f16812do.getIntrinsicHeight(), this.f16814if.getIntrinsicHeight());
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return Math.max(this.f16812do.getIntrinsicWidth(), this.f16814if.getIntrinsicWidth());
    }

    @Override // android.graphics.drawable.Drawable
    public final int getMinimumHeight() {
        return Math.max(this.f16812do.getMinimumHeight(), this.f16814if.getMinimumHeight());
    }

    @Override // android.graphics.drawable.Drawable
    public final int getMinimumWidth() {
        return Math.max(this.f16812do.getMinimumWidth(), this.f16814if.getMinimumWidth());
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        return this.f16812do.isStateful() || this.f16814if.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        float f = this.f16811do;
        Drawable drawable = this.f16814if;
        Drawable drawable2 = this.f16812do;
        if (f <= 0.5f) {
            drawable2.setAlpha(i);
            drawable.setAlpha(0);
        } else {
            drawable2.setAlpha(0);
            drawable.setAlpha(i);
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setBounds(int i, int i2, int i3, int i4) {
        super.setBounds(i, i2, i3, i4);
        this.f16812do.setBounds(i, i2, i3, i4);
        this.f16814if.setBounds(i, i2, i3, i4);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f16812do.setColorFilter(colorFilter);
        this.f16814if.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setState(int[] iArr) {
        return this.f16812do.setState(iArr) || this.f16814if.setState(iArr);
    }
}
